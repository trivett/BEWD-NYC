class Shelter
	attr_accessor :name, :clients, :animals

	def initialize name
		@name = name
		@clients = {}
		@animals = {}
	end

	def to_s
		"#{@name} Happi Tails Shelter!"
	end

	def update_clients client
		@clients[client.name] = client
	end

	def update_animals animal
		@animals[animal.name] = animal
	end

	def display_clients
		if @clients.size == 0
			puts "#{@name} Shelter has no Clients."
		else 
			@clients.each do |client|
				puts client
			end
		end
	end

	def display_animals
		if @animals.size == 0
			puts "#{@name} Shelter has no Animals."
		else
			@animals.each do |animal|
				puts animal
			end
		end
	end

	# Facilitate an Adoption and Return

end

