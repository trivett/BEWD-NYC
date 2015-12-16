require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'
require_relative 'lib/seeds'

require 'pry'

puts "Choose an option:
\nCreate an animal (a)
\nCreate a client (c)
\nDisplay all animals (da)
\nDisplay all clients (dc)
\nAdopt (ad)
\nPut up for adoption (p)
\nQuit (q)"

option = gets.chomp.downcase

if option == "a"
	puts "Animal's name?"
	animal_name = gets.chomp

	puts "Animal's species?"
	animal_species = gets.chomp

	new_animal = Animal.new(animal_name, animal_species)
	@HappiTails.add_animal(new_animal)
	puts "#{new_animal.name} has been added."

	@HappiTails.animals.each do |animal|
		puts animal.to_s
	end

elsif option == "c"
	puts "Client's name?"
	client_name = gets.chomp

	puts "Client's age?"
	client_age = gets.chomp

	new_client = Client.new(client_name, client_age, [])
	@HappiTails.add_client(new_client)
	puts "#{new_client.name} has been added."

	@HappiTails.clients.each do |client|
		puts client.to_s
	end

elsif option == "da"
	@HappiTails.show_animals

elsif option == "dc"
	@HappiTails.show_clients

elsif option == "ad"
	@HappiTails.show_clients
	puts "Which client wants to adopt?"
	c = gets.chomp.to_i
	client = @HappiTails.clients[c - 1]
	puts "#{client.name} wants to adopt."

	puts "Which pet is being adopted?"
	@HappiTails.show_animals
	p = gets.chomp.to_i
	pet = @HappiTails.animals[p - 1]


 	#delete from Shelter
 	@HappiTails.animals.delete_at(p - 1)
	client.pets << pet
	puts "#{pet.name} was adopted by #{client.name}."
	puts client.to_s

	puts "Shelter pets remaining:"
 	@HappiTails.show_animals


elsif option == "p"
	@HappiTails.show_clients
	puts "Which client wants to put up for adoption?"
	c = gets.chomp.to_i
	client = @HappiTails.clients[c - 1]
	puts "#{client.name} wants to return."

	if client.pets.any?
		puts "Pets owned:"
		client.show_pets
		puts "Which pet is being put up for adoption?"
		pr = gets.chomp.to_i
		petreturned = client.pets[pr - 1]
		puts "#{petreturned.name} is being returned to the shelter."

		#delete from client array
		client.pets.delete_at(pr - 1)
		@HappiTails.animals << petreturned

		puts "Animals at the shelter:"
		@HappiTails.show_animals
	else
		puts "This client has no pets!"
	end

	

elsif option == "q"
	puts "You have quit!"

else
	puts "Sorry, please try again"
end