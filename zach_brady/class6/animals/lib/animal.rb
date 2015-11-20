class Animal
    attr_accessor :num_legs

    @@num_legs = 4

    def to_s
        "This animal has #{ @num_legs } legs and responds to #{ @responds_to }"
    end
end
