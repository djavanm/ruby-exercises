class Person
  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def stone
    @stoned = !@stoned
  end

end
