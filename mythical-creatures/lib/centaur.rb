class Centaur
  attr_reader :name, :breed, :count

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @count = 0
    @rested = false
  end

  def shoot
    @count += 1
    if count >= 3
      @cranky = true
      return "NO!"
    elsif self.laying?
      return "NO!"
    end
    "Twang!!!"
  end

  def run
    @count += 1
    if count >= 3
      @cranky = true
      return "NO!"
    elsif self.laying?
      return "NO!"
    end
    "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky
  end

  def stand_up
    @standing = true
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      return "NO!"
    end
    @count = 0
    @cranky = false
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def rested?
    @rested
  end

  def drink_potion
    if self.standing?
        if self.rested?
          return "YUCK"
        end
      @rested = true
    end
  end


end
