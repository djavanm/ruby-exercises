gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/medusa'
require_relative '../lib/person'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    medusa = Medusa.new("Lady")
    victim_one = Person.new("Harry")
    victim_two = Person.new("Ron")
    victim_three = Person.new("Hermione")
    victim_four = Person.new("Hagrid")
    medusa.stare(victim_one)
    medusa.stare(victim_two)
    medusa.stare(victim_three)
    medusa.stare(victim_four)
    assert_equal 3, medusa.statues.count
    assert_equal "Ron", medusa.statues.first.name
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    medusa = Medusa.new("Lady")
    victim_one = Person.new("Harry")
    victim_two = Person.new("Ron")
    victim_three = Person.new("Hermione")
    victim_four = Person.new("Hagrid")
    medusa.stare(victim_one)
    medusa.stare(victim_two)
    medusa.stare(victim_three)
    medusa.stare(victim_four)
    assert_equal 3, medusa.statues.count
    assert_equal "Ron", medusa.statues.first.name
    assert_equal false, victim_one.stoned?
  end

end
