require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'

happitails = Shelter.new('HappiTails')

puts happitails

menu = "=====\nCreate Animal (enter a)\nCreate Client (enter c)\nDisplay All Animals (enter da)\nDisplay All Clients (enter dc)\nQuit (enter q)"

def new_animal(happitails)
	puts "Enter the animal's name:"
	name = gets.chomp
	puts "Enter the animal's species:"
	species = gets.chomp
	happitails.animals << Animal.new(name,species)
end

def new_client(happitails)
	puts "Enter the client's name:"
	name = gets.chomp
	puts "Enter the client's age:"
	age = gets.chomp.to_i
	happitails.clients << Client.new(name,age)
end

puts menu
action = gets.chomp.upcase
while action != "Q"
	if action == "A"
		new_animal(happitails)
	elsif action == "C"
		new_client(happitails)
	elsif action == "DA"
		happitails.display_animals
	elsif action == "DC"
		happitails.display_clients
	end
	puts menu
	action = gets.chomp.upcase
end