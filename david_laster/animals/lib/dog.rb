class Dog
  attr_accessor :name, :food, :color
  def initialize(name, food, color)
    @name = name
    @food = food
    @color = color
    end

  def to_s
    "#{@name} has a likes to eat #{@food} and is the color #{@color}"
  end

  def talk
    puts "woof"
  end
end