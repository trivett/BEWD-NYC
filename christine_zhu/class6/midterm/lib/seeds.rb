require_relative 'clients'
require_relative 'animals'
require_relative 'shelter'



happitails = Shelter.new

pet1 = Animal.new("Piccina", "cat", "Tabby", 7)
pet2 = Animal.new("Ruby", "dog", "Irish Setter", 7)

client1 = Client.new("Chris", 26, "1155 Ocean Ave", "11/21/2015")
client2 = Client.new("Christine", 28, "1155 Ocean Ave", "11/18/2015")


happitails.shelter_pets << pet1
happitails.shelter_pets << pet2

happitails.clients << client1
happitails.clients << client2