require 'pry'

class Client 
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
		@pets = []
	end

	def to_s

		puts "Here is your client name #{@name}, and his/here age #{@age}"

	end
end

