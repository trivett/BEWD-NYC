class Client
	attr_accessor :name, :age, :animals

	def initialize name, age, animals
		@name = name
		@age = age
		@animals = []
	end

	def to_s
		"#{@name} is #{@age} years old and has #{@animals}"
	end

	def adopt pet
		#
	end

	def donate pet
		#
	end

end