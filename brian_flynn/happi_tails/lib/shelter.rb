class Shelter
  attr_accessor :shelter_name, :animals, :clients

  def initialize(shelter_name, animals, clients)
      @shelter_name = shelter_name
      @animals = animals
      @clients = clients

  end

def client_list
  puts @clients
end

def animal_list
  puts @animals
end



end
