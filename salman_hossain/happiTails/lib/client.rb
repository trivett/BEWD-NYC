require 'pry'

class Client 
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
		@pets = []
	end

	def to_s

		puts "#{@name}"

	end
end



binding.pry