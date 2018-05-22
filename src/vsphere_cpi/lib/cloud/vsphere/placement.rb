module VSphereCloud
  class Placement
    include Comparable

    attr_reader :resource, :score

    def eql?(other)
      other.resource == resource && other.score == score
    end

    def hash
      [resource].hash
    end

    def inspect

    end
    # Implement #inspect

    def initialize(resource)
      @resource = resource
      @score = 0
    end

    def <=>(other)
      # TODO: needs an error message
      raise TypeError unless other.instance_of?(self.class)
      score <=> other.score
    end
  end


  class StoragePlacement < Placement

    def initialize(resource)
      unless resource.is_a?(VSphereCloud::Resources::Datastore) || resource.is_a?(VSphereCloud::Resources::StoragePod) then
        raise TypeError, "The resource is not a storage type"
      end
      super
    end

    def free_space
      resource.free_space
    end
  end

end