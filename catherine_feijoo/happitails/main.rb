require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'
require_relative 'seeds'

# print "what would you like your shelter name to be?   "
# name = gets.chomp.capitalize
# shelter = Shelter.new( name )

include Seeds

shelter = Seeds.get_shelter

input = ""
while input != "q"
	puts "*********************************"
	puts "choose from the following options"
	puts "  create an animal (ca)"
	puts "  create a client  (cc)"
	puts "  view all animals (va)"
	puts "  view all clients (vc)"
	puts "  adopt animal     (aa)"
	puts "  return animal    (ra)"
	puts "  quit             (q)"

	input = gets.chomp.downcase
	if input == "ca"
		print "enter animal name: "
		animal_name = gets.chomp.capitalize
		print "enter animal species: "
		animal_species = gets.chomp
		new_animal = Animal.new( animal_name, animal_species )
		shelter.add_animal( new_animal )

	elsif input == "cc"
		print "enter client name: "
		client_name = gets.chomp.capitalize
		print "enter client age: "
		client_age = gets.chomp.to_i
		new_client = Client.new( client_name, client_age )
		shelter.add_client( new_client )

	elsif input == "va"
		shelter.show_animals

	elsif input == "vc"
		shelter.show_clients

	elsif input == "aa"
		print "which client would like to adopt a pet? "
		client_name = gets.chomp.capitalize
		if shelter.has_client?( client_name )
			current_client = shelter.get_client( client_name )
			print "which animal would #{ client_name } like to adopt? "
			animal_name = gets.chomp.capitalize
			if shelter.has_animal?( animal_name )
				current_animal = shelter.adopt( animal_name )
				current_client.adopt_pet( current_animal )
			else
				puts "shelter does not have that animal"
			end
		else
			puts "shelter does not have that client"
		end

	elsif input == "ra"
		print "which client would like to abandon the pet? "
		client_name = gets.chomp.capitalize
		if shelter.has_client?( client_name )
			current_client = shelter.get_client( client_name )
			print "which animal is being returned? "
			animal_name = gets.chomp.capitalize
			if current_client.has_animal?( animal_name )
				animal = current_client.abandon_pet( animal_name )
				shelter.add_animal( animal )
			else
				puts "client does not have that animal"
			end
		else
			puts "shelter does not have that client"
		end

	elsif input != "q"
		puts "== invalid entry, try again =="
	end
end