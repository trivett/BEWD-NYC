require 'pry'

class Shelter
  attr_accessor :name, :animals, :clients

  def initialize (name)
    @name = name
    @animals = [] #no input for this array because it starts out empty.
    @clients = [] #no input for this array because it starts out empty.
  end


  def displayClientsWithPets
    i=1
    @clients.each do |client|
      if client.pets.any?
        puts "    #{i}: Client name: " + client.name + " Age: " + client.age

        p = 1
        client.pets.each do |pet|
          puts "        #{p}. #{pet.name}"
          p += 1
        end
      end
    end
     i +=1
  end



  def displayAllClients
    i = 1
    @clients.each do |client|
      if client.pets.any?
              puts "    #{i}: Client name: " + client.name + " Age: " + client.age

              p = 1
              client.pets.each do |pet|
                puts "        #{p}. #{pet.name}"
              end
      else
              puts "    #{i}: Client name: " + client.name + "   |Age: " + client.age
      end
      i += 1
    end
    puts
  end

  def displayAllAnimals
    i = 1
    @animals.each do |animal|
      puts "    #{i}: species: " + animal.species + "   |name: " + animal.name
      i += 1
    end
    puts
  end


  def adoption
      puts "Adopt an animal:"
      displayAllAnimals
      puts "choose the animal by its index number"
      theAnimal = gets.chomp.to_i
      theAnimal = theAnimal-1

      displayAllClients
      puts "choose the client by its index number"
      theClient = gets.chomp.to_i
      theClient = theClient-1

      @clients[theClient].pets <<  @animals.delete_at(theAnimal)

  end

  def putAnimalUpForAdoption
    puts "First, Choose the client that will be returning an animal:"
      # displayClientsWithPets
      displayAllClients
      puts "choose the client by its index number:"
      theClient = gets.chomp.to_i
      theClient = theClient-1
      puts "Next, choose the animal you want to return to the shelter."
      puts "choose the animal by its index number:"
      theAnimal = gets.chomp.to_i
      theAnimal = theAnimal-1

#     @animals << @clients[theClient].pets[theAnimal] # this is the short version. in steps below:
      # thePet = @clients[theClient].pets[theAnimal]
      clients_pets = @clients[theClient].pets
      adoptee = clients_pets.delete_at(theAnimal)
      @animals << adoptee


# binding.pry
#        puts @clients[theClient]
#        puts @clients[theClient].pets[theAnimal]

      #  @clients[theClient].delete_at(pets[theAnimal])
      # delete_at(@clients[theClient].pets[theAnimal])
    end

end
