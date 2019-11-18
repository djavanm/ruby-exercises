class Werewolf
  attr_reader :name, :location, :human
  def initialize(name, location = nil)
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end

  def wolf?
    @wolf
  end

  def hungry?
    @wolf
  end

  def consume(victim)
    if @wolf
    victim.status = :dead
    self.change!
    end
  end

end
