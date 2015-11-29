class Shelter 
  attr_accessor :name, :animals, :clients

  def initialize (name)
    @name = name
    @animals = []
    @clients = []
  end

  def show_clients()
    if @clients.length == 0
      puts "The shelter has no clients"
    else
      @clients.each do |client|
        puts client
      end
    end
  end

  def show_animals()
    if @animals.length == 0
      puts "The shelter has no animals"
    else
      @animals.each do |animal|
        puts animal
      end
    end
  end

  def show_clients_with_nums()
    i = 0
    @clients.each do |client|
      puts "(#{i}) #{client}"
      i += 1
    end
  end

  def show_animals_with_nums()
    i = 0
    @animals.each do |animal|
      puts "(#{i}) #{animal}"
      i += 1
    end
  end

  def client_is_adopting(client_num, animal_num)
    animal = @animals[animal_num]
    @clients[client_num].take_pet(animal)
    @animals.delete_at(animal_num)
  end

  def client_putting_up_adoption(client_num, pet_num)
    pet = @clients[client_num].pets[pet_num] 
    @animals << pet
    @clients[client_num].pets.delete_at(pet_num)
  end

end