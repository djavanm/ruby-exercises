class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @count = 0
  end

  def hungry?
    @count < 3
  end

  def eat
    @count +=1
  end
end
