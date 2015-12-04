require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'
require_relative 'lib/seeds'

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

	new_client = Client.new(client_name, client_age)
	@HappiTails.add_client(new_client)
	puts "#{new_client.name} has been added."

	@HappiTails.clients.each do |client|
		puts client.to_s
	end

elsif option == "da"
	@HappiTails.animals.each do |animal|
		puts animal.to_s
	end

elsif option == "dc"
	@HappiTails.clients.each do |client|
		puts client.to_s
	end

elsif option == "ad"
	puts "Which client wants to adopt?"
	client = gets.chomp.capitalize
	puts "Which pet is being adopted?"
	animal = gets.chomp.capitalize
	@Happitails.adopt(client,animal)

elsif option == "p"
	puts "Which client wants to put up for adoption?"
	client = gets.chomp.capitalize
	puts "Which pet is being put up for adoption?"
	animal = gets.chomp.capitalize
	@HappiTails.abandon(client,animal)

elsif option == "q"
	puts "You have quit!"

else
	puts "Sorry, please try again"
end