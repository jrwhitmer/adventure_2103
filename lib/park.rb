class Park

  attr_reader :name,
              :trails

  def initialize(name)
    @name = name
    @trails = []
  end

  def add_trail(trail)
    @trails << trail
  end

  def float_mileage(trail)
    num_of_miles = trail.length.delete(' miles')
    float_mileage = num_of_miles.to_f
  end

  def trails_shorter_than(mileage)
    @trails.find_all do |trail|
      float_mileage(trail) < mileage
    end
  end

  def hikeable_miles

  end
end
