require 'pry'

class Shelter
    attr_accessor :name

    def initialize(name, animals=[], clients=[])
        @name = name
        @animals = animals
        @clients = clients
    end

    def get_name
        return @name
    end

    def get_animals
        return @animals
    end

    def get_clients
        return @clients
    end


    def adopt(animal, client)
        client.pets << animal
    end

    def return_animal(animal, client)
        if client.pets.include? animal
            client.pets.delete(animal)
        end
    end

    def to_s
        "The #{ @name } Shelter currently has #{ @animals.length } animals available for adoption, and has found homes for #{ @clients.length } in the past."
    end
end
