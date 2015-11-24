class Animal
    attr_accessor :name, :species, :toys

    def initialize(name, species, toys=[])
        @name = name
        @species = species
        @toys = toys
    end

    def get_name
        return @name
    end

    def get_species
        return @species
    end

    def get_toys
        return @toys
    end

    def to_s
        "#{ @name } is a #{ @species }, and they have #{ @toys.length } toys."
    end
end
