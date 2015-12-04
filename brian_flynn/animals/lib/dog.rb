require_relative "../animal"

class Dog < Animal
 attr_accessor :how_friendly

  def initialize(name, color, size, how_friendly)
    @name = name
    @color = color
    @size = size
    @how_friendly = how_friendly
  end

  def to_s
    "#{name} the dog has #{color} fur, is #{size}, and is #{how_friendly} friendly."
  end

  def talk
    puts "Woof!"
  end



end
