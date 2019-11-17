class Wizard
  attr_reader :name, :bearded, :rested
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @count = 3
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @rested
  end

  def cast
    @count -= 1
    if @count <= 0 
      @rested = false
    end
    "MAGIC MISSILE"
  end

end
