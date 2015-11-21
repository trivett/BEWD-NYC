require_relative 'animal'

class Cat < Animal
  attr_accessor :color, :breed, :name

  def initialize(color, breed, name)
    @color = color
    @breed = breed
    @name = name
    @species = "cat"

  end

  def to_s
    "#{ @name } the cat."
  end

  def talk
    puts "Meow!"
  end
end

