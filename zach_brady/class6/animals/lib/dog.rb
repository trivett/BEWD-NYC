class Dog
    attr_accessor :eats_poop, :num_legs, :responds_to

    def initialize
        @eats_poop = true
        @num_legs = 4
        @responds_to = "Hey!"
    end

    def to_s
        "This animal has #{ @num_legs }"
    end

end
