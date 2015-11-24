require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'
require_relative 'lib/seeds'






menu = "
888    888                            d8b 88888888888       d8b 888          
888    888                            Y8P     888           Y8P 888          
888    888                                    888               888          
8888888888  8888b.  88888b.  88888b.  888     888   8888b.  888 888 .d8888b  
888    888     \"88b 888 \"88b 888 \"88b 888     888      \"88b 888 888 88K      
888    888 .d888888 888  888 888  888 888     888  .d888888 888 888 \"Y8888b. 
888    888 888  888 888 d88P 888 d88P 888     888  888  888 888 888      X88 
888    888 \"Y888888 88888P\"  88888P\"  888     888  \"Y888888 888 888  88888P' 
                    888      888                                             
                    888      888                                             
                    888      888                                             

Create [A]nimal
Create [C]lient
List [AA]nimals
List [CC]lients
[-] Adopt
[+] Put Up For Adoption
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


def adopt(shelter)
  shelter.animals.each_with_index do |animal, index|
    puts "#{index} #{animal.name}"
  end
  puts "Choose animal number to be adopted:"
  animal_number = gets.chomp.to_i
  shelter.clients.each_with_index do |client, index|
    puts "#{index} #{client.name}"
  end
  puts "Choose client number to receive pet:"
  client_number = gets.chomp.to_i

  shelter.clients[client_number].pets << shelter.animals[animal_number]
  shelter.animals[animal_number] = nil
end

def return_pet(shelter)
  puts "Choose client number to return pet:"
  shelter.clients.each_with_index do |client, index|
    puts "#{index} #{client.name}"
  end
  client_number = gets.chomp.to_i
  
  puts "Choose animal to return:"
  shelter.clients[client_number].pets.each_with_index do |animal, index|
    puts "#{index} #{animal.name}"
  end
  
  pets_number = gets.chomp.to_i

  shelter.animals << shelter.clients[client_number].pets[pets_number]
  shelter.clients[client_number].pets[pets_number] = nil
end

exit = false


while exit != true

 puts menu
 selection = gets.chomp.downcase
 system "clear" or system "cls"

 if selection == "a"
  new_animal(@happiTails)
elsif selection == "c"
  new_client(@happiTails)
elsif selection == "aa"

  @happiTails.display_animals
elsif selection == "cc"
  @happiTails.display_clients
elsif selection == "-"
  adopt(@happiTails)
elsif selection == "+"
  return_pet(@happiTails)
elsif selection == "q"
  exit = true
end

end

