require_relative 'animal'
require_relative 'hunt'

class Cat < Animal
	attr_accessor :likes_humans

	include Hunt

	def initialize(name,breed,age,likes_humans)
		@name = name
		@breed = breed
		@age = age.to_i
		@likes_humans = likes_humans
	end

	def to_s
		if @likes_humans == true
			"#{@name} is a #{@breed} cat, likes humans, and is #{@age} years old."
		else
			"#{@name} is a #{@breed} cat, is a crap, and is #{@age} years old."
		end
	end

	def talk
		puts "#{@name} says NYAN"
	end
end