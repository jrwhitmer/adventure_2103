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

end
