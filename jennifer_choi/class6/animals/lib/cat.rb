require_relative 'animals.rb'
require_relative 'hunt.rb'

class Cat < Animals

	include Hunt

	def initialize (name, claws, lives)
		@name = name
		@claws = claws
		@lives = lives
	end

	def to_s
		puts "#{@name} has #{@claws} claws and #{@lives} lives"
	end

	def talk
		puts "#{@name} says MEOW!"
	end

end

