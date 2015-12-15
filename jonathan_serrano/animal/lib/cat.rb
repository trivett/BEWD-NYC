require_relative 'animal.rb'
require_relative 'hunt.rb'
class Cat < Animal
	attr_accessor :pur, :meow, :eat, :num_feet, :eyes
	
	include Hunt
	def initialize (pur, meow, eat, num_feet, eyes)
		@pur = pur
		@meow = meow
		@eat = eat
		@num_feet = num_feet
		@eyes = eyes
	end
	def to_s 
		"the cat #{@eat} and so it #{@pur} when it likes it and #{@meow} when it wants more."
	end
	def talk
		"i want you to pet me!"
	end
end