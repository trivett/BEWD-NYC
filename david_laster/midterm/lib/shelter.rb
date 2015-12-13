class Shelter
	attr_accessor :name, :animals, :clients
  
	def initialize(name)
		@name = name
		@animals = []
		@clients = []
	end

	def to_s
    "Shelter Name: #{name}"
	end

	def display_animals
		puts @animals
	end

	def display_clients
		puts @clients
	end

end
