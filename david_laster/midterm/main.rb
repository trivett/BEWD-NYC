require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'

happiTails = Shelter.new('HappiTails')

puts happiTails

menu = "Create [A]nimal
Create [C]lient
List [AA]nimals
List [CC]lients
[Q]uit
Choose Your Selection: "

def new_animal(a)
	puts "Enter the Animal's Name:"
	name = gets.chomp
  
	puts "Enter the Animal's Species:"
	species = gets.chomp
	a.animals << Animal.new(name,species)
end

def new_client(c)
	puts "Enter the Client's name:"
	name = gets.chomp

	puts "Enter the Client's age:"
	age = gets.chomp.to_i
	c.clients << Client.new(name,age)
end


exit = false


while exit != true
	puts menu
	selection = gets.chomp.downcase
	system "clear" or system "cls"

	if selection == "a"
		new_animal(happiTails)
	elsif selection == "c"
		new_client(happiTails)
	elsif selection == "aa"
		happiTails.display_animals
	elsif selection == "cc"
		happiTails.display_clients
	elsif selection == "q"
		exit = true
	end

end

