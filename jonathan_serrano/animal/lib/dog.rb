require_relative 'animal'
class Dog < Animal
	attr_accessor :wag, :bark, :eat, :num_feet, :eyes
	def initialize(wag, bark, eat, num_feet, eyes )
		@wag = wag
		@bark = bark
		@eat = eat
		@num_feet = num_feet
		@eyes = eyes
	end

	def to_s
		"the dog #{@eat} and #{@wag} when it likes it, and #{@bark} when it wants more."
	end
	def talk
		"bow wow!"
	end
	
end