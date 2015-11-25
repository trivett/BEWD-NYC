require_relative 'animal'

class Dog < Animal
	attr_accessor :ear_style
	def initialize(name,breed,age,ear_style)
		@name = name
		@breed = breed
		@age = age.to_i
		@ear_style = ear_style
	end

	def to_s
		"#{@name} is a #{@breed}, has #{@ear_style} ears and is #{@age} years old."
	end

	def talk
		puts "#{@name} says VOOV"
	end
end