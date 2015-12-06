#this is the only working


require_relative "animal"
require_relative "catModule"

class Cat < Animal
  include Hunt
  attr_accessor :evilness, :independance, :opinion_of_humans

  def initialize(size, color, opinion_of_humans)
      @size = size
      @color = color
      @opinion_of_humans = opinion_of_humans
      @evilness = true
      @independance = "very independant"
      @num_feet = 4
  end



  def move
    "so silent"
  end


  def judge_person
    "judging"
  end
end

c = Cat.new("small","brown", "very nice indeed")

puts c.reproduction
puts c.move

c.hunt # this uses module catModule.rb



#     def to_s
#       "My cats name is #{@name}, is a #{@breed} and is color is #{@color}."
#     end
#
#     def talk
#       puts "Miawwww, im hungry. can i get some kitty food."
#     end
