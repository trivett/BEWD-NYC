class Cat
    attr_accessor :eats_poop, :num_legs, :responds_to

    def initialize
        @eats_poop = false
        @num_legs = 4
        @responds_to = "pssshhhhhhhh pshh pshh pshh"
    end

    def to_s
        "This animal has #{ @num_legs }"
    end
end

cat = Cat.new
puts cat
