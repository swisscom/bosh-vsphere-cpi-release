=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # AWS account
  class AwsAccount
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

    # The type of this resource.
    attr_accessor :resource_type

    # Tenant ID of the cloud account
    attr_accessor :tenant_id

    # Instance statistics
    attr_accessor :instance_stats

    # Cloud Type
    attr_accessor :cloud_type

    # Booolean flag to enable or disable cloud tags discovery. The discovered cloud tags can be used to define security group membership. 
    attr_accessor :cloud_tags_enabled

    # List of authorized users
    attr_accessor :auth_users

    # Status of the account
    attr_accessor :status

    # Access key of cloud account
    attr_accessor :access_key

    # Count of the regions available
    attr_accessor :regions_count

    # Is the AWS authorization mechanism based on Identity and Access Management(IAM) service? 
    attr_accessor :auth_mechanism_iam

    # Service Role Name for IAM role csm needs to assume
    attr_accessor :gateway_role_name

    # VPC statistics
    attr_accessor :vpc_stats

    # Has a managed VPC?
    attr_accessor :has_managed_vpc

    # Secret key of cloud account
    attr_accessor :secret_key

    # External id for the IAM role csm needs to assume
    attr_accessor :external_id

    # Amazon Resource Names (ARNs) uniquely identify AWS resources. We will use it here to identify the IAM role csm needs to assume. 
    attr_accessor :iam_role_arn

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
        :'tenant_id' => :'tenant_id',
        :'instance_stats' => :'instance_stats',
        :'cloud_type' => :'cloud_type',
        :'cloud_tags_enabled' => :'cloud_tags_enabled',
        :'auth_users' => :'auth_users',
        :'status' => :'status',
        :'access_key' => :'access_key',
        :'regions_count' => :'regions_count',
        :'auth_mechanism_iam' => :'auth_mechanism_iam',
        :'gateway_role_name' => :'gateway_role_name',
        :'vpc_stats' => :'vpc_stats',
        :'has_managed_vpc' => :'has_managed_vpc',
        :'secret_key' => :'secret_key',
        :'external_id' => :'external_id',
        :'iam_role_arn' => :'iam_role_arn'
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
        :'tenant_id' => :'String',
        :'instance_stats' => :'InstanceStats',
        :'cloud_type' => :'String',
        :'cloud_tags_enabled' => :'BOOLEAN',
        :'auth_users' => :'Array<CloudUserInfo>',
        :'status' => :'AwsAccountStatus',
        :'access_key' => :'String',
        :'regions_count' => :'Integer',
        :'auth_mechanism_iam' => :'BOOLEAN',
        :'gateway_role_name' => :'String',
        :'vpc_stats' => :'VpcStats',
        :'has_managed_vpc' => :'String',
        :'secret_key' => :'String',
        :'external_id' => :'String',
        :'iam_role_arn' => :'String'
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

      if attributes.has_key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.has_key?(:'instance_stats')
        self.instance_stats = attributes[:'instance_stats']
      end

      if attributes.has_key?(:'cloud_type')
        self.cloud_type = attributes[:'cloud_type']
      end

      if attributes.has_key?(:'cloud_tags_enabled')
        self.cloud_tags_enabled = attributes[:'cloud_tags_enabled']
      else
        self.cloud_tags_enabled = true
      end

      if attributes.has_key?(:'auth_users')
        if (value = attributes[:'auth_users']).is_a?(Array)
          self.auth_users = value
        end
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'access_key')
        self.access_key = attributes[:'access_key']
      end

      if attributes.has_key?(:'regions_count')
        self.regions_count = attributes[:'regions_count']
      end

      if attributes.has_key?(:'auth_mechanism_iam')
        self.auth_mechanism_iam = attributes[:'auth_mechanism_iam']
      end

      if attributes.has_key?(:'gateway_role_name')
        self.gateway_role_name = attributes[:'gateway_role_name']
      end

      if attributes.has_key?(:'vpc_stats')
        self.vpc_stats = attributes[:'vpc_stats']
      end

      if attributes.has_key?(:'has_managed_vpc')
        self.has_managed_vpc = attributes[:'has_managed_vpc']
      end

      if attributes.has_key?(:'secret_key')
        self.secret_key = attributes[:'secret_key']
      end

      if attributes.has_key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.has_key?(:'iam_role_arn')
        self.iam_role_arn = attributes[:'iam_role_arn']
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

      if @cloud_type.nil?
        invalid_properties.push("invalid value for 'cloud_type', cloud_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if @cloud_type.nil?
      cloud_type_validator = EnumAttributeValidator.new('String', ["AWS", "AZURE", "GOOGLE"])
      return false unless cloud_type_validator.valid?(@cloud_type)
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
    # @param [Object] cloud_type Object to be assigned
    def cloud_type=(cloud_type)
      validator = EnumAttributeValidator.new('String', ["AWS", "AZURE", "GOOGLE"])
      unless validator.valid?(cloud_type)
        fail ArgumentError, "invalid value for 'cloud_type', must be one of #{validator.allowable_values}."
      end
      @cloud_type = cloud_type
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
          tenant_id == o.tenant_id &&
          instance_stats == o.instance_stats &&
          cloud_type == o.cloud_type &&
          cloud_tags_enabled == o.cloud_tags_enabled &&
          auth_users == o.auth_users &&
          status == o.status &&
          access_key == o.access_key &&
          regions_count == o.regions_count &&
          auth_mechanism_iam == o.auth_mechanism_iam &&
          gateway_role_name == o.gateway_role_name &&
          vpc_stats == o.vpc_stats &&
          has_managed_vpc == o.has_managed_vpc &&
          secret_key == o.secret_key &&
          external_id == o.external_id &&
          iam_role_arn == o.iam_role_arn
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, tenant_id, instance_stats, cloud_type, cloud_tags_enabled, auth_users, status, access_key, regions_count, auth_mechanism_iam, gateway_role_name, vpc_stats, has_managed_vpc, secret_key, external_id, iam_role_arn].hash
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
