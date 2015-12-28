class Client
	attr_accessor :name, :age, :animals

	def initialize name, age
		@name = name
		@age = age
		@animals = {}
	end

	def to_s
		"Name: #{@name} Age: #{@age}" # Animals: #{@anmials}
	endg

end