require_relative 'animal'
require_relative 'hunt'

class Cat < Animal
	include Hunt

	def talk
		"meow"
	end
end





