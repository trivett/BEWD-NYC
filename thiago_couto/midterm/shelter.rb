class Shelter
	attr_accessor :name, :clients, :animals

	def initialize name, clients, animals
		@name = name
		@clients = []
		@animals = []
	end

	def to_s
		"The #{@name} Happi Tails Shelter"
	end

	def display_clients
		#
	end

	def display_animals
		#
	end

	# Facilitate an Adoption and Return

end

