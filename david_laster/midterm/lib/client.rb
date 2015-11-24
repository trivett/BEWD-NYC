class Client
	attr_accessor :name, :age, :pets
	def initialize(name,age)
		@name = name
		@age = age.to_i
		@pets = []
	end

	def to_s
		"Name: #{@name} Age: #{@age}"
	end


end