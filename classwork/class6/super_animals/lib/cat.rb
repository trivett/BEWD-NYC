require_relative 'animal'

class Cat < Animal
  attr_accessor :evilness, :independence, :opinion_of_humans

  def initialize(size, color, opinion_of_humans)
    @size = size 
    @color = color
    @opinion_of_humans = opinion_of_humans
    @evilness = true
    @independence = "extreme, but hypocritical"
  end


  def move
    "so silent"
  end

  def judge_person
    "judging"
  end
end

c = Cat.new("small", "brown", "very nice indeed")
c.num_feet = 4
puts c.move
puts c.size
puts c.opinion_of_humans
