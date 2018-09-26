require 'cloud/vsphere/logger'

module VSphereCloud
  class DrsRule
    include Logger

    CUSTOM_ATTRIBUTE_NAME = 'drs_rule'
    DRS_LOCK_SUFFIX_VMGROUP = '_vm_group'
    DEFAULT_RULE_NAME = 'vcpi-drs-rule'

    def initialize(rule_name, client, datacenter_cluster)
      @rule_name = rule_name
      @client = client
      @cloud_searcher = CloudSearcher.new(@client.service_content)
      @datacenter_cluster = datacenter_cluster
      @vm_group = VmGroup.new(client, datacenter_cluster)
      @vm_attribute_manager = VMAttributeManager.new(
        client.service_content.custom_fields_manager
      )
    end

    def add_vm(vm)

      DrsLock.new(@vm_attribute_manager, @client, @rule_name).with_drs_lock do
        tag_vm(vm)
        rule = find_rule
        if rule
          update_rule(rule.key, vm)
        else
          add_rule(vm)
        end
      end
    end

    private

    def tag_vm(vm)
      @vm_group.add_vm_to_vm_group(vm, @rule_name)
      #
      # custom_attribute = @vm_attribute_manager.find_by_name(CUSTOM_ATTRIBUTE_NAME)
      # unless custom_attribute
      #   logger.debug('Creating DRS rule attribute')
      #   @vm_attribute_manager.create(CUSTOM_ATTRIBUTE_NAME)
      # end
      #
      # logger.debug("Updating DRS rule attribute value: #{@rule_name}, vm: #{vm.name}")
      # vm.set_custom_value(CUSTOM_ATTRIBUTE_NAME, @rule_name)
    end

    def find_rule
      @datacenter_cluster.configuration_ex.rule.find { |r| r.name == @rule_name }
    end

    def add_rule(vm)
      logger.debug("Adding DRS rule: #{@rule_name}")
      add_anti_affinity_rule(VimSdk::Vim::Option::ArrayUpdateSpec::Operation::ADD, vm)
    end

    def update_rule(rule_key, vm)
      logger.debug("Updating DRS rule: #{@rule_name}")
      add_anti_affinity_rule(VimSdk::Vim::Option::ArrayUpdateSpec::Operation::EDIT,  vm, rule_key)
    end

    def add_anti_affinity_rule(operation, vm, rule_key = nil)
      config_spec = VimSdk::Vim::Cluster::ConfigSpecEx.new
      rule_spec = VimSdk::Vim::Cluster::RuleSpec.new
      rule_spec.operation = operation

      rule_info = VimSdk::Vim::Cluster::AntiAffinityRuleSpec.new
      rule_info.enabled = true
      rule_info.name = @rule_name
      rule_info.vm = tagged_vms(vm)
      vm_names = rule_info.vm.map { |v| v.name }
      logger.debug("Setting DRS rule: #{@rule_name}, vms: #{vm_names.join(', ')}")
      rule_info.key = rule_key if rule_key

      rule_spec.info = rule_info

      config_spec.rules_spec = [rule_spec]
      reconfigure_cluster(config_spec)
    end

    def reconfigure_cluster(config_spec)
      @client.wait_for_task do
        @datacenter_cluster.reconfigure_ex(config_spec, true)
      end
    end

    def tagged_vms(vm)
      existing_vm_group = @vm_group.find_vm_group(@rule_name)
      existing_vm_group ? existing_vm_group.vm.concat([vm]) : [vm]
      # custom_attribute = @vm_attribute_manager.find_by_name(CUSTOM_ATTRIBUTE_NAME)
      # return [] unless custom_attribute
      #
      # @cloud_searcher.get_managed_objects_with_attribute(
      #   VimSdk::Vim::VirtualMachine,
      #   custom_attribute.key,
      #   value: @rule_name
      # )
    end
  end
end
