class Ogre
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_counter += 1
    self.swing_at(human)
  end

  def swing_at(human)
    if human.notices_ogre?
      @swings += 1
      if @swings % 2 == 0
        human.knocked_out = true
      end
    end
  end

  def apologize(human)
    human.knocked_out = false
  end

end
