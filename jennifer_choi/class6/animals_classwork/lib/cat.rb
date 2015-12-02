require_relative 'animals'

class Cat < Animal
    attr_accessor :evilness, :independence, :opinion_of_humans

    def initialize (size, color, opinion_of_humans)
        @size = size
        @color = color
        @opinion_of_humans = opinion_of_humans
        @evilness = true
        @independence = "extreme, but hypocritical"
        @num_feet = 4
    end

    def move
        "so silent"
    end

    def judge_person
        "judging"
    end
end
