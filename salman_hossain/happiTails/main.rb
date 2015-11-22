require 'pry'
require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'

animal_haven = Shelter.new("Animal Haven")

#puts s.name
option = ""
while option.downcase != "q"	
	
	puts "Please choose following options: | Create animal (a) | Create Client (c) | Quit (q)"
	option = gets.chomp.downcase

	if option == "a"
		puts "Plesase enter a animal name"
		animal_name = gets.chomp

		puts "Plesase enter a animal species"
		animal_species = gets.chomp

		animal_haven.animals << Animal.new(animal_name, animal_species)

#		animal_haven.animals.each do |a|
#			puts a
#		end
	elsif option == "c"	
		puts "Please enter a client name "
		client_name = gets.chomp.downcase

		puts "Please enter a client age"
		client_age = gets.chomp.downcase

		animal_haven.clients << Client.new(client_name, client_age)

#		animal_haven.clients.each do |b|
#			puts b
# 		end
	else option == "q"
		
		puts "You choose to quit this program"
		exit


	end
	
end
