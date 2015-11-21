class Client
	attr_accessor :name, :age, :pets
	def initialize
		@name = name
		@age = age.to_i
		@pets = []
	end

	def to_s
		"My name is #{@name} and I am #{@age} years old!"
	end
end