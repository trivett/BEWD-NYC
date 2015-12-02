require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'
require_relative 'lib/seeds'

puts @happitails

menu = "=====\nCreate Animal (enter a)\nCreate Client (enter c)\nDisplay All Animals (enter da)\nDisplay All Clients (enter dc)\nAdopt (enter adopt)\nReturn an animal (enter return)\nQuit (enter q)\n====="

puts menu
action = gets.chomp.upcase
while action != "Q"
	if action == "A"
		@happitails.new_animal
	elsif action == "C"
		@happitails.new_client
	elsif action == "DA"
		@happitails.display_animals
	elsif action == "DC"
		@happitails.display_clients
	elsif action == "ADOPT"
		@happitails.adopt
	elsif action == "RETURN"
		@happitails.return_animal
	else
		puts "Not a valid entry, please try again."
	end
	puts menu
	action = gets.chomp.upcase
end