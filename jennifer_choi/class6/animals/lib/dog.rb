require_relative 'animals.rb'

class Dog < Animals
	attr_accessor :tricks

	def initialize (name, tricks, claws, lives)
		@name = name
		@tricks = tricks
		@claws = claws
		@lives = lives
	end

	def to_s
		puts "#{@name} does #{@tricks} tricks, has #{@claws} claws and #{@lives} lives"
	end

	def talk
		puts "#{@name} says WOOF!"
	end
end

