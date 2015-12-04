require_relative 'animal'

class Dog < Animal
  attr_accessor :color, :breed, :name
  
  def initialize(color, breed, name)
    @color = color
    @breed = breed
    @name = name
    @species = "dog"
  end

  def to_s
    "#{ @name } the dog."
  end

  def talk
    puts "Arf!"
  end
end
