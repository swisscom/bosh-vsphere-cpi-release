=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class DhcpStatistics
    # The total number of DHCP errors
    attr_accessor :errors

    # The total number of DHCP RELEASE packets
    attr_accessor :releases

    # The total number of DHCP INFORM packets
    attr_accessor :informs

    # The total number of DHCP DECLINE packets
    attr_accessor :declines

    # dhcp server uuid
    attr_accessor :dhcp_server_id

    # The total number of DHCP NACK packets
    attr_accessor :nacks

    # The total number of DHCP OFFER packets
    attr_accessor :offers

    # The total number of DHCP DISCOVER packets
    attr_accessor :discovers

    # The total number of DHCP ACK packets
    attr_accessor :acks

    # timestamp of the statistics
    attr_accessor :timestamp

    # The total number of DHCP REQUEST packets
    attr_accessor :requests

    # The DHCP ip pool usage statistics
    attr_accessor :ip_pool_stats


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'errors' => :'errors',
        :'releases' => :'releases',
        :'informs' => :'informs',
        :'declines' => :'declines',
        :'dhcp_server_id' => :'dhcp_server_id',
        :'nacks' => :'nacks',
        :'offers' => :'offers',
        :'discovers' => :'discovers',
        :'acks' => :'acks',
        :'timestamp' => :'timestamp',
        :'requests' => :'requests',
        :'ip_pool_stats' => :'ip_pool_stats'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'errors' => :'Integer',
        :'releases' => :'Integer',
        :'informs' => :'Integer',
        :'declines' => :'Integer',
        :'dhcp_server_id' => :'String',
        :'nacks' => :'Integer',
        :'offers' => :'Integer',
        :'discovers' => :'Integer',
        :'acks' => :'Integer',
        :'timestamp' => :'Integer',
        :'requests' => :'Integer',
        :'ip_pool_stats' => :'Array<DhcpIpPoolUsage>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'errors')
        self.errors = attributes[:'errors']
      end

      if attributes.has_key?(:'releases')
        self.releases = attributes[:'releases']
      end

      if attributes.has_key?(:'informs')
        self.informs = attributes[:'informs']
      end

      if attributes.has_key?(:'declines')
        self.declines = attributes[:'declines']
      end

      if attributes.has_key?(:'dhcp_server_id')
        self.dhcp_server_id = attributes[:'dhcp_server_id']
      end

      if attributes.has_key?(:'nacks')
        self.nacks = attributes[:'nacks']
      end

      if attributes.has_key?(:'offers')
        self.offers = attributes[:'offers']
      end

      if attributes.has_key?(:'discovers')
        self.discovers = attributes[:'discovers']
      end

      if attributes.has_key?(:'acks')
        self.acks = attributes[:'acks']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'requests')
        self.requests = attributes[:'requests']
      end

      if attributes.has_key?(:'ip_pool_stats')
        if (value = attributes[:'ip_pool_stats']).is_a?(Array)
          self.ip_pool_stats = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @errors.nil?
        invalid_properties.push("invalid value for 'errors', errors cannot be nil.")
      end

      if @releases.nil?
        invalid_properties.push("invalid value for 'releases', releases cannot be nil.")
      end

      if @informs.nil?
        invalid_properties.push("invalid value for 'informs', informs cannot be nil.")
      end

      if @declines.nil?
        invalid_properties.push("invalid value for 'declines', declines cannot be nil.")
      end

      if @dhcp_server_id.nil?
        invalid_properties.push("invalid value for 'dhcp_server_id', dhcp_server_id cannot be nil.")
      end

      if @nacks.nil?
        invalid_properties.push("invalid value for 'nacks', nacks cannot be nil.")
      end

      if @offers.nil?
        invalid_properties.push("invalid value for 'offers', offers cannot be nil.")
      end

      if @discovers.nil?
        invalid_properties.push("invalid value for 'discovers', discovers cannot be nil.")
      end

      if @acks.nil?
        invalid_properties.push("invalid value for 'acks', acks cannot be nil.")
      end

      if @timestamp.nil?
        invalid_properties.push("invalid value for 'timestamp', timestamp cannot be nil.")
      end

      if @requests.nil?
        invalid_properties.push("invalid value for 'requests', requests cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @errors.nil?
      return false if @releases.nil?
      return false if @informs.nil?
      return false if @declines.nil?
      return false if @dhcp_server_id.nil?
      return false if @nacks.nil?
      return false if @offers.nil?
      return false if @discovers.nil?
      return false if @acks.nil?
      return false if @timestamp.nil?
      return false if @requests.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          errors == o.errors &&
          releases == o.releases &&
          informs == o.informs &&
          declines == o.declines &&
          dhcp_server_id == o.dhcp_server_id &&
          nacks == o.nacks &&
          offers == o.offers &&
          discovers == o.discovers &&
          acks == o.acks &&
          timestamp == o.timestamp &&
          requests == o.requests &&
          ip_pool_stats == o.ip_pool_stats
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [errors, releases, informs, declines, dhcp_server_id, nacks, offers, discovers, acks, timestamp, requests, ip_pool_stats].hash
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
