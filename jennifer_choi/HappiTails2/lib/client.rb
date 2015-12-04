class Client
	attr_accessor :name, :age, :pets

	def initialize(name, age, pets)
		@name = name
		@age = age.to_i
		@pets = []
	end

	def to_s
		puts "Client #{@name} is #{@age} years old and they have #{@pets.length} pets."
	end

end