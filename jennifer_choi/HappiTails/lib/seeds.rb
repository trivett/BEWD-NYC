@HappiTails = Shelter.new("HappiTails")

animal1 = Animal.new("Fido", "Dog")
animal2 = Animal.new("Dory", "Fish")
animal3 = Animal.new("Mittens", "Cat")
animal4 = Animal.new("George", "Monkey")
animal5 = Animal.new("Harold", "Horse")

client1 = Client.new("Tom", 25, [])
client2 = Client.new("Dick", 30, [])
client3 = Client.new("Harry", 50, [])

client3.pets << animal4
client3.pets << animal5

@HappiTails.add_animal(animal1)
@HappiTails.add_animal(animal2)
@HappiTails.add_animal(animal3)

@HappiTails.add_client(client1)
@HappiTails.add_client(client2)
@HappiTails.add_client(client3)


