require_relative 'animal'

class Dog < Animal
    attr_accessor :eats_poop, :responds_to

    def initialize
        @eats_poop = true
        @responds_to = "Hey!"
    end

end

dog = Dog.new
puts dog
