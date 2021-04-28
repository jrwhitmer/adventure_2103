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

  def trails_shorter_than(mileage)
    @trails.find_all do |trail|
      trail.length < mileage
    end
  end

  def hikeable_miles
    @trails.sum do |trail|
      trail.length
    end
  end

  def trails_by_level
    trails_by_level = {}
    @trails.each do |trail|
      if trails_by_level[trail.level].nil?
        trails_by_level[trail.level] = []
      end
      trails_by_level[trail.level] << trail.name
    end
    trails_by_level
  end
end
