class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stone
    @statues.push(victim)
    if @statues.count > 3
      @statues.first.stone
      @statues.shift
    end
  end

end
