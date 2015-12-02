require 'pry'
require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'

henry = Animal.new("Henry Miller", "Cat")
me = Client.new("Zach", 26)
$sugar_mutts = Shelter.new("Sugar Mutts")

while true
    puts
    puts "Welcome to the Sugar Mutts Shelter Directory. "
    puts "  - (a) add an animal"
    puts "  - (b) add a client"
    puts "  - (c) list all animals"
    puts "  - (d) list all clients"
    puts "  - (e) adoption"
    puts "  - (f) return pet (you asshole.)"
    puts "  - (q) quit"
    puts

    answer = gets.chomp.downcase
    puts

    case answer

    when "a"
        puts "What is the animal's name? "
        name = gets.chomp
        puts "What is the animal's species? "
        species = gets.chomp.downcase
        toys = []
        puts "Does #{name} have any toys? "
        reply = gets.chomp.downcase
        if reply == "yes"
            puts "What is #{name}'s favorite toy? "
            favorite_toy = gets.chomp
            toys << favorite_toy
        else
            toys = []
        end
        new_animal = Animal.new(name, species, toys)
        $sugar_mutts.get_animals << new_animal
        puts "#{new_animal.get_name} was added to our shelter's database. "

    when "b"
        puts "What is the client's name? "
        name = gets.chomp
        puts "What is the client's age? "
        age = gets.chomp.to_i
        pets = []
        puts "Does #{name} have any pets? "
        reply = gets.chomp.downcase
        if reply == "yes"
            # need to update to take in multiple pets
            puts "What pet does #{name} have? "
            pets = gets.chomp
        end
        new_client = Client.new(name, age, pets)
        $sugar_mutts.get_clients << new_client
        puts "#{new_client.get_name} was added to our shelter's database. "

    when "c"
        $sugar_mutts.get_animals.each do |animal|
            puts "Animal name: " + animal.get_name
            puts "Species: " + animal.get_species
            if animal.get_toys.size != 0
                puts "Toys:  " + animal.get_toys.join(", ")
            end
            puts
        end

    when "d"
        $sugar_mutts.get_clients.each do |client|
            puts "Client name: " + client.get_name
            puts "Age: " + client.get_age.to_s
            if client.get_pets.size != 0
                puts "Pets:  " + client.get_pets.join(", ")
            end
            puts
        end

    when "e"
        puts "Who wants to adopt? "
        client = gets.chomp
        puts "Who do they want to adopt? "
        animal = gets.chomp
        $sugar_mutts.adopt(animal, client)

    when "f"
        puts "Who's a bad person? "
        client = gets.chomp
        puts "Who do they want to abandon? "
        animal = gets.chomp
        $sugar_mutts.return_pet(animal, client)

    when "q"
        exit

    else
        puts "I'm sorry, I didn't quite get that"
    end
end
