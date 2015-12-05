class Apartment
    attr_accessor :sq_footage, :rent, :neighborhood, :num_bedrooms, :elevator, :renters
    def initialize(neighborhood, rent, sq_footage)
        @neighborhood = neighborhood
        @rent = rent.to_i
        @sq_footage = sq_footage.to_i
        @elevator = false
        @renters = []
        @num_bedrooms = 1
    end

    def to_s
    	"I have a lovely apartment for you in #{@neighborhood.capitalize}, it's only
    	#{@rent} and you get #{@sq_footage} sq ft! Cozy!"
    end

    def rent_too_damn_high?
    	@sq_footage * 10 > @rent.to_i
    end

    def is_occupied?
        @renters.length != 0
    end

    def add_renters(person)
        @renters << person
    end
end


