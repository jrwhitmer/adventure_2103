class Hiker

  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = {}
    @parks_visited = []
  end

  def pack(snack, quantity)
    @snacks[snack] = quantity
  end

  def visit(park)
    @parks_visited << park
  end

  def possible_trails
    possible_trails = []
    @parks_visited.each do |park|
      matching_trails = park.trails.find_all do |trail|
        trail.level == @experience_level
      end
      possible_trails << matching_trails
    end.flatten
    possible_trails
  end

  def favorite_snack
    array_of_fave_snack_kv = @snacks.max_by do   |snack|
      @snacks[snack[0]]
    end
    array_of_fave_snack_kv[0]
  end
end
