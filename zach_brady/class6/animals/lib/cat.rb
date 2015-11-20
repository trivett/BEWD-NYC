require 'pry'

require_relative 'animal'

class Cat < Animal
    attr_accessor :eats_poop, :responds_to

    def initialize
        @eats_poop = false
        @responds_to = "pssshhhhhhhh pshh pshh pshh"
    end
end

cat = Cat.new


binding.pry
