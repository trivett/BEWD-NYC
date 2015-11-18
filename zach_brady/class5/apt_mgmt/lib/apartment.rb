class Apartment
    attr_accessor :sq_footage, :rent, :neighborhood, :num_bedrooms, :elevator, :renters

    def initialize(neighborhood, rent, sq_footage)
        @neighborhood = neighborhood
        @sq_footage = sq_footage.to_i
        @rent = rent.to_i
        @elevator = false
        @num_bedrooms = 1
        @renters = []
    end

    def to_s
        "I have a lovely apartment for you in #{ @neighborhood }, it's only #{ @rent } and you get #{ @sq_footage } square feet! Cozy!"
    end

    def rent_too_damn_high

    end

    def is_occupied? 
        if @renters.length > 0 
            return false
        else
            return true
        end
    end
end

a = Apartment.new("Tribeca", 5000, 600)

puts a.is_occupied?

