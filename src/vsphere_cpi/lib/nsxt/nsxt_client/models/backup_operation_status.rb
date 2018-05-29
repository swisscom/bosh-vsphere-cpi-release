=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class BackupOperationStatus
    # Unique identifier of a backup
    attr_accessor :backup_id

    # Time when operation was ended
    attr_accessor :end_time

    # True if backup is successfully completed, else false
    attr_accessor :success

    # Time when operation was started
    attr_accessor :start_time

    # Error code details
    attr_accessor :error_message

    # Error code
    attr_accessor :error_code

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
        :'backup_id' => :'backup_id',
        :'end_time' => :'end_time',
        :'success' => :'success',
        :'start_time' => :'start_time',
        :'error_message' => :'error_message',
        :'error_code' => :'error_code'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'backup_id' => :'String',
        :'end_time' => :'Integer',
        :'success' => :'BOOLEAN',
        :'start_time' => :'Integer',
        :'error_message' => :'String',
        :'error_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'backup_id')
        self.backup_id = attributes[:'backup_id']
      end

      if attributes.has_key?(:'end_time')
        self.end_time = attributes[:'end_time']
      end

      if attributes.has_key?(:'success')
        self.success = attributes[:'success']
      end

      if attributes.has_key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end

      if attributes.has_key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.has_key?(:'error_code')
        self.error_code = attributes[:'error_code']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @backup_id.nil?
        invalid_properties.push("invalid value for 'backup_id', backup_id cannot be nil.")
      end

      if @success.nil?
        invalid_properties.push("invalid value for 'success', success cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @backup_id.nil?
      return false if @success.nil?
      error_code_validator = EnumAttributeValidator.new('String', ["BACKUP_NOT_RUN_ON_MASTER", "BACKUP_SERVER_UNREACHABLE", "BACKUP_AUTHENTICATION_FAILURE", "BACKUP_PERMISSION_ERROR", "BACKUP_TIMEOUT", "BACKUP_BAD_FINGERPRINT", "BACKUP_GENERIC_ERROR"])
      return false unless error_code_validator.valid?(@error_code)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(error_code)
      validator = EnumAttributeValidator.new('String', ["BACKUP_NOT_RUN_ON_MASTER", "BACKUP_SERVER_UNREACHABLE", "BACKUP_AUTHENTICATION_FAILURE", "BACKUP_PERMISSION_ERROR", "BACKUP_TIMEOUT", "BACKUP_BAD_FINGERPRINT", "BACKUP_GENERIC_ERROR"])
      unless validator.valid?(error_code)
        fail ArgumentError, "invalid value for 'error_code', must be one of #{validator.allowable_values}."
      end
      @error_code = error_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          backup_id == o.backup_id &&
          end_time == o.end_time &&
          success == o.success &&
          start_time == o.start_time &&
          error_message == o.error_message &&
          error_code == o.error_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [backup_id, end_time, success, start_time, error_message, error_code].hash
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
