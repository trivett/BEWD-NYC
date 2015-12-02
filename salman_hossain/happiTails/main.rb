require 'pry'
require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'
require_relative 'lib/seeds'

binding.pry

animal_haven = Shelter.new("Animal Haven")


#puts s.name
option = ""
while option.downcase != "q"	
	
	puts "Please choose following options: | Create animal (a) | Create Client (c) | Quit (q) |
	Display all animals (da) | Display all clients (dc) | Adopt Pet (ap) | Animal Up for Adoption (up)| "
	option = gets.chomp.downcase

	if option == "a"
		puts "Plesase enter a animal name"
		animal_name = gets.chomp

		puts "Plesase enter a animal species"
		animal_species = gets.chomp

		animal_haven.animals << Animal.new(animal_name, animal_species)

	elsif option == "da"

		animal_haven.display_all_animals

	elsif option == "c"	
		puts "Please enter a client name "
		client_name = gets.chomp.downcase

		puts "Please enter a client age"
		client_age = gets.chomp.downcase

		animal_haven.clients << Client.new(client_name, client_age)

	elsif option == "dc"

		animal_haven.display_all_client
		
	elsif option == "ap"
	
		animal_haven.adopt_animal

	elsif option == "up"

		animal_haven.put_up_for_adoption
		
	else option == "q"
		
		puts "You choose to quit this program"
		exit
	end
	
end


