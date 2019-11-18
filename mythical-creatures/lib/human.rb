class Human
  attr_accessor :name, :encounter_counter, :knocked_out

  def initialize
    @name = "Jane"
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    @knocked_out
  end
end
