class Trail

  attr_reader :name,
              :level

  def initialize(attributes)
    @name = attributes[:name]
    @length = attributes[:length]
    @level = attributes[:level]
  end

  def length
    @length.delete(" miles").to_f
  end
end
