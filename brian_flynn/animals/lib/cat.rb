require_relative "../animal"
require_relative "hunt"

class Cat < Animal
 attr_accessor :how_evil

 include Hunt

  def initialize(name, color, size, how_evil)
    @name = name
    @color = color
    @size = size
    @how_evil = how_evil
  end

  def to_s
    "#{name} the cat has #{color} fur, is #{size}, and is #{how_evil} evil."
  end

  def talk
    puts "Meow!"
  end



end

