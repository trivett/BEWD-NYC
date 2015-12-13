require_relative 'lib/shelter'
require_relative 'lib/client'
require_relative 'lib/animal'

def main

  while true do

        puts "Pease select option:
    1. To add an animal.
    2. To add a client.
    3. To display all animals.
    4. To display all clients.
    5. To Adopt a pet.
    6. To put a pet up for adoption.
    9. quit.
    Your input:"

        answer = gets.chomp
        answer.downcase!


          if answer == "1"
           
                puts "Please input the name of the animal:"
                animal_name = gets.chomp
                puts "Please input the species of the animal:"
                animal_species = gets.chomp
                animal_instance = Animal.new(animal_name,animal_species)
                shelter1.animals <<  animal_instance
                puts
                shelter1.displayAllAnimals()
                puts

          elsif answer == "2"
          
                puts "Please input the name of the client:"
                client_name = gets.chomp
                puts "Please input the age of the client:"
                client_age = gets.chomp
                client_instance = Client.new(client_name,client_age)
                shelter1.clients << client_instance
                puts
                shelter1.displayAllClients()
                puts

          elsif answer == "3"
            
                puts "displays all animals:"
                shelter1.displayAllAnimals()
                puts

          elsif answer == "4"
             
                puts "disply all clients:"
                shelter1.displayAllClients()
                puts

          elsif answer == "5"
               puts "Adopt a pet:"
               shelter1.adoption


          elsif answer == "6" 
              puts "Put an animal up for adoption:"
              shelter1.putAnimalUpForAdoption

          elsif answer == "7"
              shelter1.displayClientsWithPets


            elsif answer == "9"
                break
            end
        
  end
end