require_relative 'animal'
require_relative 'hunt'

class Cat < Animal
  include Hunt
  attr_accessor :canCatchMice

  def initialize(name, favoriteTreat, canCatchMice)
    @name = name
    @favoriteTreat = favoriteTreat
    @canCatchMice = canCatchMice
  end

  def to_s
    return "The cat names #{ name } has a favorite food of #{ favoriteTreat }. Can it catch mice? #{ canCatchMice.to_s }"
  end

  def talk
    puts 'meow'
  end

end