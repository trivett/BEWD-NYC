require_relative 'animal'

class Dog < Animal
  attr_accessor :canCatchFrisbees

  def initialize(name, favoriteTreat, canCatchFrisbees)
    @name = name
    @favoriteTreat = favoriteTreat
    @canCatchFrisbees = canCatchFrisbees
  end

  def to_s
    return "The dog named #{ @name } has a favorite treat of #{ @favoriteTreat }. Can he catch frisbees? #{ @canCatchFrisbees.to_s }"
  end

  def talk
    puts "bark bark"
  end




end