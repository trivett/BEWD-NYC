require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

def seedit
	animal_haven = Shelter.new("Animal Haven")

	puts animal_haven


	pet1 = Animal.new("Max", "Cat")
	pet2 = Animal.new("Bailey", "Dog")
	pet3 = Animal.new("Lucy", "Cat")
	pet4 = Animal.new("Bandit", "Cat")
	pet5 = Animal.new("Cooking", "Bird")
	pet6 = Animal.new("Cruiser", "Dog")
	pet7 = Animal.new("Blackbot", "Cat")



	animal_haven.animals << pet1
	animal_haven.animals << pet2
	animal_haven.animals << pet3
	animal_haven.animals << pet4
	animal_haven.animals << pet5
	animal_haven.animals << pet6
	animal_haven.animals << pet7



	h = Client.new("Jack", 50)
	i = Client.new("animal kingdom", 30)
	j = Client.new("Jacky", 5)
	k = Client.new("sweet animal", 20)

	animal_haven.clients.push(h)
	animal_haven.clients << i
	animal_haven.clients << h
	animal_haven.clients << h
	puts "seeds"

	puts animal_haven.clients


end

#seedit

	#animal_haven.animals << Animal.new(animal_name, animal_species)