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
    puts "  - (c) add a client"
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

    when "c"
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


    when "q"
        exit

    else
        puts "I'm sorry, I didn't quite get that"
    end
end
