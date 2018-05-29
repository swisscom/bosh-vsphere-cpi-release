=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class AwsVirtualMachine
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    attr_accessor :_schema

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Indicates system owned resource
    attr_accessor :_system_owned

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Timestamp of resource creation
    attr_accessor :_create_time

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Unique identifier of this resource
    attr_accessor :id

    # Possible values are in the form of VirtualMachine prefixed by cloud name. For example, AwsVirtualMachine or AzureVirtualMachine. 
    attr_accessor :resource_type

    # Index of HA that indicates whether gateway is primary or secondary. If index is 0, then it is primary gateway. Else secondary gateway. 
    attr_accessor :gateway_ha_index

    # IP address provided by Nsx
    attr_accessor :nsx_ip

    # Gateway Status
    attr_accessor :gateway_status

    # Flag to identify if this VM is a gateway node
    attr_accessor :is_gateway

    # Flag to identify if this VM is an active gateway node
    attr_accessor :is_gateway_active

    # These error messages are recent and are maximum of 1 hour old. 
    attr_accessor :error_messages

    # Agent Status
    attr_accessor :agent_status

    # Logical Switch ID
    attr_accessor :logical_switch_id

    # Logical Switch display name
    attr_accessor :logical_switch_display_name

    # Private IP address of the virtual machine
    attr_accessor :private_ip

    # Indicates the threat state of the VM. NORMAL - This state implies no threat has been detected and VM is functioning as expected. THREAT - This state implies quarantine enabling threat has been detected. INVALID - This state implies either VM is unmanaged or threat related information is not available. 
    attr_accessor :threat_state

    # Operating system details
    attr_accessor :os_details

    # Indicate if vm is managed by NSX or not
    attr_accessor :managed_by_nsx

    # Indicates the quarantine state of the VM. QUARANTINED - This state implies VM is moved to quarantine security group because some threat has been detected. NOT_QUARANTINED - This state implies no quarantine action has been taken. UNKNOWN - This state implies either quarantine policy is disabled or quarantine information is not available. OVERRIDDEN - This state implies VM is associated with vm_override_sg which overrides any action based on threat detection. 
    attr_accessor :quarantine_state

    # Cloud tags for the virtual machine
    attr_accessor :cloud_tags

    # Public IP address of the virtual machine
    attr_accessor :public_ip

    # Operating system of the virtual machine
    attr_accessor :os_type

    # Agent version details
    attr_accessor :agent_version

    # VPC name of the virtual machine
    attr_accessor :vpc_name

    # Region of the virtual machine
    attr_accessor :region

    # Indicates the power state of the virutal machine as returned by AWS. 
    attr_accessor :power_state

    # VPC id of the virtual machine
    attr_accessor :vpc

    # Availability Zone of the virtual machine
    attr_accessor :availability_zone

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'_revision' => :'_revision',
        :'_system_owned' => :'_system_owned',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'_create_user' => :'_create_user',
        :'_protection' => :'_protection',
        :'_create_time' => :'_create_time',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'gateway_ha_index' => :'gateway_ha_index',
        :'nsx_ip' => :'nsx_ip',
        :'gateway_status' => :'gateway_status',
        :'is_gateway' => :'is_gateway',
        :'is_gateway_active' => :'is_gateway_active',
        :'error_messages' => :'error_messages',
        :'agent_status' => :'agent_status',
        :'logical_switch_id' => :'logical_switch_id',
        :'logical_switch_display_name' => :'logical_switch_display_name',
        :'private_ip' => :'private_ip',
        :'threat_state' => :'threat_state',
        :'os_details' => :'os_details',
        :'managed_by_nsx' => :'managed_by_nsx',
        :'quarantine_state' => :'quarantine_state',
        :'cloud_tags' => :'cloud_tags',
        :'public_ip' => :'public_ip',
        :'os_type' => :'os_type',
        :'agent_version' => :'agent_version',
        :'vpc_name' => :'vpc_name',
        :'region' => :'region',
        :'power_state' => :'power_state',
        :'vpc' => :'vpc',
        :'availability_zone' => :'availability_zone'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_revision' => :'Integer',
        :'_system_owned' => :'BOOLEAN',
        :'display_name' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<Tag>',
        :'_create_user' => :'String',
        :'_protection' => :'String',
        :'_create_time' => :'Integer',
        :'_last_modified_time' => :'Integer',
        :'_last_modified_user' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'gateway_ha_index' => :'Integer',
        :'nsx_ip' => :'String',
        :'gateway_status' => :'String',
        :'is_gateway' => :'BOOLEAN',
        :'is_gateway_active' => :'BOOLEAN',
        :'error_messages' => :'Array<ComputeInstanceErrorMessage>',
        :'agent_status' => :'String',
        :'logical_switch_id' => :'String',
        :'logical_switch_display_name' => :'String',
        :'private_ip' => :'String',
        :'threat_state' => :'String',
        :'os_details' => :'String',
        :'managed_by_nsx' => :'BOOLEAN',
        :'quarantine_state' => :'String',
        :'cloud_tags' => :'Array<CloudTag>',
        :'public_ip' => :'String',
        :'os_type' => :'String',
        :'agent_version' => :'String',
        :'vpc_name' => :'String',
        :'region' => :'String',
        :'power_state' => :'String',
        :'vpc' => :'String',
        :'availability_zone' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'_revision')
        self._revision = attributes[:'_revision']
      end

      if attributes.has_key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.has_key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.has_key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.has_key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.has_key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'gateway_ha_index')
        self.gateway_ha_index = attributes[:'gateway_ha_index']
      end

      if attributes.has_key?(:'nsx_ip')
        self.nsx_ip = attributes[:'nsx_ip']
      end

      if attributes.has_key?(:'gateway_status')
        self.gateway_status = attributes[:'gateway_status']
      end

      if attributes.has_key?(:'is_gateway')
        self.is_gateway = attributes[:'is_gateway']
      end

      if attributes.has_key?(:'is_gateway_active')
        self.is_gateway_active = attributes[:'is_gateway_active']
      end

      if attributes.has_key?(:'error_messages')
        if (value = attributes[:'error_messages']).is_a?(Array)
          self.error_messages = value
        end
      end

      if attributes.has_key?(:'agent_status')
        self.agent_status = attributes[:'agent_status']
      end

      if attributes.has_key?(:'logical_switch_id')
        self.logical_switch_id = attributes[:'logical_switch_id']
      end

      if attributes.has_key?(:'logical_switch_display_name')
        self.logical_switch_display_name = attributes[:'logical_switch_display_name']
      end

      if attributes.has_key?(:'private_ip')
        self.private_ip = attributes[:'private_ip']
      end

      if attributes.has_key?(:'threat_state')
        self.threat_state = attributes[:'threat_state']
      end

      if attributes.has_key?(:'os_details')
        self.os_details = attributes[:'os_details']
      end

      if attributes.has_key?(:'managed_by_nsx')
        self.managed_by_nsx = attributes[:'managed_by_nsx']
      end

      if attributes.has_key?(:'quarantine_state')
        self.quarantine_state = attributes[:'quarantine_state']
      end

      if attributes.has_key?(:'cloud_tags')
        if (value = attributes[:'cloud_tags']).is_a?(Array)
          self.cloud_tags = value
        end
      end

      if attributes.has_key?(:'public_ip')
        self.public_ip = attributes[:'public_ip']
      end

      if attributes.has_key?(:'os_type')
        self.os_type = attributes[:'os_type']
      end

      if attributes.has_key?(:'agent_version')
        self.agent_version = attributes[:'agent_version']
      end

      if attributes.has_key?(:'vpc_name')
        self.vpc_name = attributes[:'vpc_name']
      end

      if attributes.has_key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.has_key?(:'power_state')
        self.power_state = attributes[:'power_state']
      end

      if attributes.has_key?(:'vpc')
        self.vpc = attributes[:'vpc']
      end

      if attributes.has_key?(:'availability_zone')
        self.availability_zone = attributes[:'availability_zone']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push("invalid value for 'display_name', the character length must be smaller than or equal to 255.")
      end

      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 1024.")
      end

      if @resource_type.nil?
        invalid_properties.push("invalid value for 'resource_type', resource_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('String', ["AwsVirtualMachine", "AzureVirtualMachine"])
      return false unless resource_type_validator.valid?(@resource_type)
      gateway_status_validator = EnumAttributeValidator.new('String', ["UP", "DOWN", "DEPLOYING", "NOT_AVAILABLE", "UNDEPLOYING"])
      return false unless gateway_status_validator.valid?(@gateway_status)
      agent_status_validator = EnumAttributeValidator.new('String', ["UP", "DOWN", "NO_AGENT"])
      return false unless agent_status_validator.valid?(@agent_status)
      threat_state_validator = EnumAttributeValidator.new('String', ["NORMAL", "THREAT", "INVALID"])
      return false unless threat_state_validator.valid?(@threat_state)
      quarantine_state_validator = EnumAttributeValidator.new('String', ["QUARANTINED", "NOT_QUARANTINED", "UNKNOWN", "OVERRIDDEN"])
      return false unless quarantine_state_validator.valid?(@quarantine_state)
      power_state_validator = EnumAttributeValidator.new('String', ["PENDING", "RUNNING", "SHUTTING_DOWN", "TERMINATED", "STOPPING", "STOPPED"])
      return false unless power_state_validator.valid?(@power_state)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)

      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'display_name', the character length must be smaller than or equal to 255."
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 1024."
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('String', ["AwsVirtualMachine", "AzureVirtualMachine"])
      unless validator.valid?(resource_type)
        fail ArgumentError, "invalid value for 'resource_type', must be one of #{validator.allowable_values}."
      end
      @resource_type = resource_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gateway_status Object to be assigned
    def gateway_status=(gateway_status)
      validator = EnumAttributeValidator.new('String', ["UP", "DOWN", "DEPLOYING", "NOT_AVAILABLE", "UNDEPLOYING"])
      unless validator.valid?(gateway_status)
        fail ArgumentError, "invalid value for 'gateway_status', must be one of #{validator.allowable_values}."
      end
      @gateway_status = gateway_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] agent_status Object to be assigned
    def agent_status=(agent_status)
      validator = EnumAttributeValidator.new('String', ["UP", "DOWN", "NO_AGENT"])
      unless validator.valid?(agent_status)
        fail ArgumentError, "invalid value for 'agent_status', must be one of #{validator.allowable_values}."
      end
      @agent_status = agent_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] threat_state Object to be assigned
    def threat_state=(threat_state)
      validator = EnumAttributeValidator.new('String', ["NORMAL", "THREAT", "INVALID"])
      unless validator.valid?(threat_state)
        fail ArgumentError, "invalid value for 'threat_state', must be one of #{validator.allowable_values}."
      end
      @threat_state = threat_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quarantine_state Object to be assigned
    def quarantine_state=(quarantine_state)
      validator = EnumAttributeValidator.new('String', ["QUARANTINED", "NOT_QUARANTINED", "UNKNOWN", "OVERRIDDEN"])
      unless validator.valid?(quarantine_state)
        fail ArgumentError, "invalid value for 'quarantine_state', must be one of #{validator.allowable_values}."
      end
      @quarantine_state = quarantine_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] power_state Object to be assigned
    def power_state=(power_state)
      validator = EnumAttributeValidator.new('String', ["PENDING", "RUNNING", "SHUTTING_DOWN", "TERMINATED", "STOPPING", "STOPPED"])
      unless validator.valid?(power_state)
        fail ArgumentError, "invalid value for 'power_state', must be one of #{validator.allowable_values}."
      end
      @power_state = power_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          _revision == o._revision &&
          _system_owned == o._system_owned &&
          display_name == o.display_name &&
          description == o.description &&
          tags == o.tags &&
          _create_user == o._create_user &&
          _protection == o._protection &&
          _create_time == o._create_time &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          id == o.id &&
          resource_type == o.resource_type &&
          gateway_ha_index == o.gateway_ha_index &&
          nsx_ip == o.nsx_ip &&
          gateway_status == o.gateway_status &&
          is_gateway == o.is_gateway &&
          is_gateway_active == o.is_gateway_active &&
          error_messages == o.error_messages &&
          agent_status == o.agent_status &&
          logical_switch_id == o.logical_switch_id &&
          logical_switch_display_name == o.logical_switch_display_name &&
          private_ip == o.private_ip &&
          threat_state == o.threat_state &&
          os_details == o.os_details &&
          managed_by_nsx == o.managed_by_nsx &&
          quarantine_state == o.quarantine_state &&
          cloud_tags == o.cloud_tags &&
          public_ip == o.public_ip &&
          os_type == o.os_type &&
          agent_version == o.agent_version &&
          vpc_name == o.vpc_name &&
          region == o.region &&
          power_state == o.power_state &&
          vpc == o.vpc &&
          availability_zone == o.availability_zone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, gateway_ha_index, nsx_ip, gateway_status, is_gateway, is_gateway_active, error_messages, agent_status, logical_switch_id, logical_switch_display_name, private_ip, threat_state, os_details, managed_by_nsx, quarantine_state, cloud_tags, public_ip, os_type, agent_version, vpc_name, region, power_state, vpc, availability_zone].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        #If value has resource_type - use it to deserialize
        unless value[:resource_type ].nil?
          type = value[:resource_type].to_sym
        end
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end

end
