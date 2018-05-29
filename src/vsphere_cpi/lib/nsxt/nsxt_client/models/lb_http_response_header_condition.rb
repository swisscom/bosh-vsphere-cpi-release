=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # This condition is used to match HTTP response messages from backend servers by HTTP header fields. HTTP header fields are components of the header section of HTTP request and response messages. They define the operating parameters of an HTTP transaction. For example, Cookie, Authorization, User-Agent, etc. One condition can be used to match one header field, to match multiple header fields, multiple conditions must be specified. The match_type field defines how header_value field is used to match HTTP responses. The header_name field does not support match types. 
  class LbHttpResponseHeaderCondition
    # A flag to indicate whether reverse the match result of this condition
    attr_accessor :inverse

    # Type of load balancer rule condition
    attr_accessor :type

    # Value of HTTP header field
    attr_accessor :header_value

    # Match type of HTTP header value
    attr_accessor :match_type

    # Name of HTTP header field
    attr_accessor :header_name

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
        :'inverse' => :'inverse',
        :'type' => :'type',
        :'header_value' => :'header_value',
        :'match_type' => :'match_type',
        :'header_name' => :'header_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'inverse' => :'BOOLEAN',
        :'type' => :'String',
        :'header_value' => :'String',
        :'match_type' => :'String',
        :'header_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'inverse')
        self.inverse = attributes[:'inverse']
      else
        self.inverse = false
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'header_value')
        self.header_value = attributes[:'header_value']
      end

      if attributes.has_key?(:'match_type')
        self.match_type = attributes[:'match_type']
      else
        self.match_type = "REGEX"
      end

      if attributes.has_key?(:'header_name')
        self.header_name = attributes[:'header_name']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @header_value.nil?
        invalid_properties.push("invalid value for 'header_value', header_value cannot be nil.")
      end

      if @header_name.nil?
        invalid_properties.push("invalid value for 'header_name', header_name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["LbHttpRequestMethodCondition", "LbHttpRequestUriCondition", "LbHttpRequestUriArgumentsCondition", "LbHttpRequestVersionCondition", "LbHttpRequestHeaderCondition", "LbHttpRequestBodyCondition", "LbHttpResponseHeaderCondition", "LbTcpHeaderCondition", "LbIpHeaderCondition"])
      return false unless type_validator.valid?(@type)
      return false if @header_value.nil?
      match_type_validator = EnumAttributeValidator.new('String', ["STARTS_WITH", "ENDS_WITH", "EQUALS", "CONTAINS", "REGEX"])
      return false unless match_type_validator.valid?(@match_type)
      return false if @header_name.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["LbHttpRequestMethodCondition", "LbHttpRequestUriCondition", "LbHttpRequestUriArgumentsCondition", "LbHttpRequestVersionCondition", "LbHttpRequestHeaderCondition", "LbHttpRequestBodyCondition", "LbHttpResponseHeaderCondition", "LbTcpHeaderCondition", "LbIpHeaderCondition"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] match_type Object to be assigned
    def match_type=(match_type)
      validator = EnumAttributeValidator.new('String', ["STARTS_WITH", "ENDS_WITH", "EQUALS", "CONTAINS", "REGEX"])
      unless validator.valid?(match_type)
        fail ArgumentError, "invalid value for 'match_type', must be one of #{validator.allowable_values}."
      end
      @match_type = match_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          inverse == o.inverse &&
          type == o.type &&
          header_value == o.header_value &&
          match_type == o.match_type &&
          header_name == o.header_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [inverse, type, header_value, match_type, header_name].hash
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
