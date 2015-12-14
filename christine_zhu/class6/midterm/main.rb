# require 'pry'
require_relative 'lib/animals'
require_relative 'lib/clients'
require_relative 'lib/shelter'


happitails = Shelter.new

pet1 = Animal.new("Piccina", "cat", "Tabby", 7)
pet2 = Animal.new("Ruby", "dog", "Irish Setter", 7)

client1 = Client.new("Chris", 26, "1155 Ocean Ave", "11/21/2015")
client2 = Client.new("Christine", 28, "1155 Ocean Ave", "11/18/2015")


happitails.shelter_pets << pet1
happitails.shelter_pets << pet2

happitails.clients << client1
happitails.clients << client2


menu_choice = ""

while menu_choice != "ESC"

	puts "Hello, please select from the following options: Enter a new animal (1) | Enter a new client (2) | Adopt a new pet (3) | Return a pet (4) | View All Clients (5) | View All Pets (6) | or Log out (ESC) | Please make a selection using the corresponding number."	
		
		menu_choice = gets.chomp

	while menu_choice != "1" && menu_choice != "2" && menu_choice != "3" && menu_choice != "4" && menu_choice != "5" && menu_choice != "6" && menu_choice != "esc"

		puts "Please try again."
		puts "Hello, please select from the following options: Enter a new animal (1) | Enter a new client (2) | Adopt a new pet (3) | Return a pet (4) | View All Clients (5) | View All Pets (6) | or log out (ESC) | Please make a selection using the corresponding number."
		menu_choice = gets.chomp.downcase
	end 	

			if menu_choice == "1"
				happitails.add_new_pet

			elsif menu_choice == "2"
				happitails.add_new_client

			elsif menu_choice == "3"
				happitails.pet_adoption

			elsif menu_choice == "4"
				happitails.pet_return

			elsif menu_choice == "5"
				happitails.view_all_clients

			elsif menu_choice == "6"
				happitails.print_petlist

			else menu_choice == "esc"
					puts "You have chosen to exit this program."
					exit
			end

end














