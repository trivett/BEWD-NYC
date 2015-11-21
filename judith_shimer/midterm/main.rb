require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'

happitails = Shelter.new('HappiTails')
animal = Animal.new
client = Client.new

puts happitails

menu = "=====\nCreate Animal (enter a)\nCreate Client (enter c)\nQuit (enter q)"

def new_animal(animal,happitails)
	puts "Enter the animal's name:"
	animal.name = gets.chomp
	puts "Enter the animal's species:"
	animal.species = gets.chomp
	puts animal
	happitails.animals << {name: animal.name, species: animal.species}
end

def new_client(client,happitails)
	puts "Enter the client's name:"
	client.name = gets.chomp
	puts "Enter the client's age:"
	client.age = gets.chomp.to_i
	puts client
	happitails.clients << {name: client.name, age: client.age}
end

puts menu
action = gets.chomp.upcase
while action != "Q"
	if action == "A"
		new_animal(animal,happitails)
	elsif action == "C"
		new_client(client,happitails)
	end
	puts menu
	action = gets.chomp.upcase
end