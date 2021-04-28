class Trail

  attr_reader :name,
              :length,
              :level

  def initialize(attributes)
    @name = attributes[:name]
    @length = attributes[:length]
    @level = attributes[:level]
  end

  def length_to_float
    @length.delete(" miles").to_f
  end
end
