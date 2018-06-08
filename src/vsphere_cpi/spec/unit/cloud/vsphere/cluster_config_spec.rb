require 'spec_helper'

module VSphereCloud
  describe ClusterConfig do
    subject(:cluster_config) { described_class.new(name, config) }
    let(:name) { 'fake-cluster-name' }
    let(:config) do
      {
        'resource_pool' => 'fake-resource-pool',
        'host_group' => 'fake-host-group',
        'vm_group' => 'fake-vm-group',
        'vm_host_affinity_rule_name' => 'fake-vm-host-affinity-rule',
      }
    end

    describe '#name' do
      it 'returns the cluster name' do
        expect(cluster_config.name).to eq(name)
      end
    end

    describe '#resource_pool' do
      it 'returns the resource pool name' do
        expect(cluster_config.resource_pool).to eq('fake-resource-pool')
      end
    end

    describe '#host_group' do
      it 'returns the host group name' do
        expect(cluster_config.host_group).to eq('fake-host-group')
      end
    end
  end
end
