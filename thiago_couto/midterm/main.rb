require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

input = ""
s = Shelter.new("Jessy's")
s.update_clients(Client.new("Thiago",31))
s.update_clients(Client.new("Jessy",15))
s.update_animals(Animal.new("Sparky","Dog"))
s.update_animals(Animal.new("Bubbles","Fish"))

while input != "q"
	puts "\n
	------------------------------------->
	--> Welcome to #{s}
	--> Input one of the following options:
	------------------------------------->
	--> Create a Client (c)
	--> Create an Animal (a)
	--> List Clients (lc)
	--> List Animals (la)
	--> Quit (q)
	------------------------------------->"
	input = gets.chomp.downcase

	###### New Client
	if input == "c"
		puts "\n
	------------------------------------->
	Enter new Client information
	------------------------------------->
	Name:"
		c_name = gets.chomp.upcase
		puts "\n
	Age:"
		c_age = gets.chomp.to_i
		# puts "Animals:"
		# c_animals = gets.chomp.capitalize
		c = Client.new(c_name, c_age)
		s.update_clients(c)
		puts "\n
	------------------------------------->
	Client #{c} has been added"

	###### New Animal
	elsif input == "a"
		puts "\n
	------------------------------------->
	Enter new Animal information
	------------------------------------->
	Name:"
		a_name = gets.chomp.upcase
		puts "\n
	Species:"
		a_species = gets.chomp.downcase
		a = Animal.new(a_name, a_species)
		s.update_animals(a)
		puts "\n
	------------------------------------->
	Animal #{a} has been added"

	elsif input == "lc"
		s.display_clients
	
	elsif input == "la"
		s.display_animals
			 	 
	###### Other Keys
	else
		puts "\n
	--> Incorrect input! Please try again."
	end
	
end