require_relative "lib/animal.rb"

class Dog < Animal
  attr_accessor :barkVolume :

  def initialize(barkVolume)
    @size = barkVolume
  end

  def to_s
    "My #{@kind} doggy's size is so #{@size}, and his color is #{@color}"
  end

  def talk
      "rrrrr."
  end
end
