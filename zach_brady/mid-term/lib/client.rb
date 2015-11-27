class Client
    attr_accessor :name, :age, :pets

    def initialize(name, age, pets=[])
        @name = name
        @age = age
        @pets = pets
    end

    def get_name
        return @name
    end

    def get_age
        return @age
    end

    def get_pets
        return @pets
    end

    def to_s
        "#{ @name } is #{ @age } years old, and they have #{ @pets.length } pets."
    end
end
