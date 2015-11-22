require 'pry'

class Client 
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
		@pets = []
	end

	def to_s

		"Here is your client name #{@name}, and client age is #{@age}"

	end
end

