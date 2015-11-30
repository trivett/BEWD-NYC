require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/shelter'
require_relative 'seeds'

def create_animal(s)
  puts 'Creating an animal...'
  puts "Enter the animal\'s name: "
  name = gets.chomp
  puts "Enter the animal's species"
  species = gets.chomp

  a = Animal.new(name, species)
  s.animals << a
end


def create_client(s)
  puts 'Creating a client...'
  puts "Enter the client\'s name: "
  name = gets.chomp
  puts "Enter the client\'s age: "
  age = gets.chomp.to_i
  print "Is the client a cat lady? (y/n): "
  isCatLady = gets.chomp.downcase

  if isCatLady == 'n'
    c = Client.new(name, age)
    s.clients << c
  elsif isCatLady == 'y'
    c = CatLady.new(name, age)
    s.clients << c
  else
    puts "Invalid option. Try again."
  end
end


def client_is_adopting(s)
  puts 'Facilitating client adoption...'

  if s.animals.length == 0
    puts 'There are currently no animals up for adoption'

  elsif s.clients.length == 0
    puts 'There are currently no clients requesting an adoption'

  else
    s.show_clients_with_nums
    print 'Pick a client (by number): '
    client_num = gets.chomp.to_i
    puts '-----------------------------'
    if client_num < 0 || client_num >= s.clients.length
      puts "Invalid client number. Try again."
    elsif s.clients[client_num].pets.length >= 2
      puts "You can't adopt more than 2 animals!"
    else
      s.show_animals_with_nums
      print 'Pick an animal to adopt (by number): '
      animal_num = gets.chomp.to_i
      puts '-----------------------------'

      if animal_num < 0 || animal_num >= s.animals.length
        puts "Invalid animal number. Try again."
      else
        s.client_is_adopting(client_num, animal_num)
      end
    end
  end
end


def client_up_for_adoption(s)
  puts 'Putting an animal up for adoption...'

  if s.clients.length == 0
    puts 'There are currently no clients requesting an adoption'
  else
    s.show_clients_with_nums
    print 'Pick a client (by number): '
    client_num = gets.chomp.to_i
    puts '-----------------------------'
    if client_num < 0 || client_num >= s.clients.length
      puts "Invalid client number. Try again."
    elsif s.clients[client_num].pets.length == 0
      puts "The client doesn\'t own any pets"
    else
      s.clients[client_num].show_pets_with_nums

      print "Pick a pet to put up for adoption (by number): "
      pet_num = gets.chomp.to_i
      puts '-----------------------------'
      if pet_num < 0 || pet_num >= s.clients[client_num].pets.length
        puts "Invalid animal number. Try again."
      else
        s.client_putting_up_adoption(client_num, pet_num)
        puts "Pet has been successfully put up for adoption"
      end
    end
  end
end


def playing_with_pet(s)
  if s.clients.length == 0
    puts 'There are currently no clients'
  else
    s.show_clients_with_nums
    print 'Pick a client (by number): '
    client_num = gets.chomp.to_i
    puts '-----------------------------'
    if client_num < 0 || client_num >= s.clients.length
      puts "Invalid client number. Try again."
    elsif s.clients[client_num].pets.length == 0
      puts "The client has no pets"
    else
      s.clients[client_num].show_pets_with_nums
      print 'Pick a pet (by number): '
      pet_num = gets.chomp.to_i
      puts '-----------------------------'
      if pet_num < 0 || pet_num >= s.clients[client_num].pets.length
        puts "Invalid pet number. Try again."
      else  
        s.clients[client_num].plays(s.clients[client_num].pets[pet_num])
      end
    end
  end
end


def give_toy_to_pet(s)
  puts "Giving a toy to a pet..."

  if s.clients.length == 0
    puts 'There are currently no clients'
  else
    s.show_clients_with_nums
    print 'Pick a client (by number): '
    client_num = gets.chomp.to_i
    puts '-----------------------------'
    if client_num < 0 || client_num >= s.clients.length
      puts "Invalid client number. Try again."
    elsif s.clients[client_num].pets.length == 0
      puts "The client has no pets"
    else
      s.clients[client_num].show_pets_with_nums
      print 'Pick a pet (by number): '
      pet_num = gets.chomp.to_i
      puts '-----------------------------'
      if pet_num < 0 || pet_num >= s.clients[client_num].pets.length
        puts "Invalid pet number. Try again."
      else 
        print "What toy would you like to give the pet? "
        toy = gets.chomp

        s.clients[client_num].give_toy(s.clients[client_num].pets[pet_num], toy)

        puts 'Toy was successfully given to the pet'
      end
    end
  end
end


def main
  s = create_shelter_data

  while true
    puts '-----------------------------'
    puts 'Shelter Options'
    puts '-----------------------------'
    puts '(1) Create an animal'
    puts '(2) Create a client'
    puts "(3) Print all of the shelter\'s animals"
    puts "(4) Print all of the shelter\'s clients"
    puts "(5) Client wants to adopt an animal"
    puts "(6) Client wants to put an animal up for adoption"
    puts '(7) Client wants play with a pet'
    puts '(8) Give a toy to a pet'
    puts '(9) Quit'   
    puts '-----------------------------'

    print 'Pick an option: '

    option = gets.chomp.to_i

    if option == 1
      create_animal(s)

    elsif option == 2
      create_client(s)

    elsif option == 3
      s.show_animals

    elsif option == 4
      s.show_clients

    elsif option == 5
      client_is_adopting(s)

    elsif option == 6
      client_up_for_adoption(s)
    
    elsif option == 7
      playing_with_pet(s)

    elsif option == 8
      give_toy_to_pet(s)

    elsif option == 9
      break
    else
      puts 'Invalid Option. Please reenter.'
    end
  end
end


# Calling main function
main


    