class Shelter
	attr_accessor :name, :animals, :clients
	def initialize(name)
		@name = name
		@animals = []
		@clients = []
	end

	def to_s
		"Welcome to #{@name}!"
	end

	def adopt
		puts "Select an animal! (Enter the number next to the animal)"
		display_animals
		a_choice = gets.chomp.to_i
		animal = @animals[a_choice - 1]
		puts "Select a client. (Enter the number next to the client)"
		display_clients
		c_choice = gets.chomp.to_i
		client = @clients[c_choice - 1]
		client.pets << animal
		puts "#{animal.name} has been adopted by #{client.name}!"
		@animals.delete_at(a_choice - 1)
	end

	def return_animal
		puts "Select the client who wishes to heartlessly return their pet. (Enter the number next to the client)"
		display_clients
		c_choice = gets.chomp.to_i
		client = @clients[c_choice - 1]
		puts "Select the pet who will be thoughtlessly abandoned. (Enter the number next to the pet)"
		client.display_pets
		a_choice = gets.chomp.to_i
		pet = client.pets[a_choice - 1]
		puts "#{pet.name} has been returned to the shelter."
		client.pets.delete_at(a_choice - 1)
		@animals << pet
	end
	
	def display_animals
		@animals.each_with_index do |animal, index|
			puts "#{animal} [#{index + 1}]"
		end
	end

	def display_clients
		@clients.each_with_index do |client, index|
			puts "#{client} (#{client.pets.length} pets) [#{index + 1}]"
		end
	end

end