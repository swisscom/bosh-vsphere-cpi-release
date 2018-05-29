=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # HTTP Service properties
  class HttpServiceProperties
    # NSX session inactivity timeout, set to 0 to configure no timeout
    attr_accessor :session_timeout

    attr_accessor :certificate

    # Host name or IP address to use for redirect location headers, or empty string to derive from current request
    attr_accessor :redirect_host

    # TLS protocol versions
    attr_accessor :protocol_versions

    # Cipher suites used to secure contents of connection
    attr_accessor :cipher_suites

    # NSX connection timeout, set to 0 to configure no timeout
    attr_accessor :connection_timeout


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'session_timeout' => :'session_timeout',
        :'certificate' => :'certificate',
        :'redirect_host' => :'redirect_host',
        :'protocol_versions' => :'protocol_versions',
        :'cipher_suites' => :'cipher_suites',
        :'connection_timeout' => :'connection_timeout'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'session_timeout' => :'Integer',
        :'certificate' => :'Certificate',
        :'redirect_host' => :'String',
        :'protocol_versions' => :'Array<ProtocolVersion>',
        :'cipher_suites' => :'Array<CipherSuite>',
        :'connection_timeout' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'session_timeout')
        self.session_timeout = attributes[:'session_timeout']
      end

      if attributes.has_key?(:'certificate')
        self.certificate = attributes[:'certificate']
      end

      if attributes.has_key?(:'redirect_host')
        self.redirect_host = attributes[:'redirect_host']
      else
        self.redirect_host = ""
      end

      if attributes.has_key?(:'protocol_versions')
        if (value = attributes[:'protocol_versions']).is_a?(Array)
          self.protocol_versions = value
        end
      end

      if attributes.has_key?(:'cipher_suites')
        if (value = attributes[:'cipher_suites']).is_a?(Array)
          self.cipher_suites = value
        end
      end

      if attributes.has_key?(:'connection_timeout')
        self.connection_timeout = attributes[:'connection_timeout']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@session_timeout.nil? && @session_timeout > 2147483647
        invalid_properties.push("invalid value for 'session_timeout', must be smaller than or equal to 2147483647.")
      end

      if !@session_timeout.nil? && @session_timeout < 0
        invalid_properties.push("invalid value for 'session_timeout', must be greater than or equal to 0.")
      end

      if !@redirect_host.nil? && @redirect_host !~ Regexp.new(/^(?=.{1,255}$)[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?(?:\\.[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?)*\\.?$|^$/)
        invalid_properties.push("invalid value for 'redirect_host', must conform to the pattern /^(?=.{1,255}$)[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?(?:\\.[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?)*\\.?$|^$/.")
      end

      if !@connection_timeout.nil? && @connection_timeout > 2147483647
        invalid_properties.push("invalid value for 'connection_timeout', must be smaller than or equal to 2147483647.")
      end

      if !@connection_timeout.nil? && @connection_timeout < 0
        invalid_properties.push("invalid value for 'connection_timeout', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@session_timeout.nil? && @session_timeout > 2147483647
      return false if !@session_timeout.nil? && @session_timeout < 0
      return false if !@redirect_host.nil? && @redirect_host !~ Regexp.new(/^(?=.{1,255}$)[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?(?:\\.[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?)*\\.?$|^$/)
      return false if !@connection_timeout.nil? && @connection_timeout > 2147483647
      return false if !@connection_timeout.nil? && @connection_timeout < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] session_timeout Value to be assigned
    def session_timeout=(session_timeout)

      if !session_timeout.nil? && session_timeout > 2147483647
        fail ArgumentError, "invalid value for 'session_timeout', must be smaller than or equal to 2147483647."
      end

      if !session_timeout.nil? && session_timeout < 0
        fail ArgumentError, "invalid value for 'session_timeout', must be greater than or equal to 0."
      end

      @session_timeout = session_timeout
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_host Value to be assigned
    def redirect_host=(redirect_host)

      if !redirect_host.nil? && redirect_host !~ Regexp.new(/^(?=.{1,255}$)[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?(?:\\.[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?)*\\.?$|^$/)
        fail ArgumentError, "invalid value for 'redirect_host', must conform to the pattern /^(?=.{1,255}$)[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?(?:\\.[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?)*\\.?$|^$/."
      end

      @redirect_host = redirect_host
    end

    # Custom attribute writer method with validation
    # @param [Object] connection_timeout Value to be assigned
    def connection_timeout=(connection_timeout)

      if !connection_timeout.nil? && connection_timeout > 2147483647
        fail ArgumentError, "invalid value for 'connection_timeout', must be smaller than or equal to 2147483647."
      end

      if !connection_timeout.nil? && connection_timeout < 0
        fail ArgumentError, "invalid value for 'connection_timeout', must be greater than or equal to 0."
      end

      @connection_timeout = connection_timeout
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          session_timeout == o.session_timeout &&
          certificate == o.certificate &&
          redirect_host == o.redirect_host &&
          protocol_versions == o.protocol_versions &&
          cipher_suites == o.cipher_suites &&
          connection_timeout == o.connection_timeout
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [session_timeout, certificate, redirect_host, protocol_versions, cipher_suites, connection_timeout].hash
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
