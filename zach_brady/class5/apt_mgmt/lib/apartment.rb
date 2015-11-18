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
        if (@rent / @sq_footage) > 2
            puts "At #{ @rent } dollars for #{ @sq_footage } square feet, the rent is too! damn! high!!!"
            return true
        else
            puts "At #{ @rent } dollars for #{ @sq_footage } square feet, the rent is reasonable"
            return false
        end
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
b = Apartment.new("New Jersey", 2000, 2000)

puts a.rent_too_damn_high
puts b.rent_too_damn_high

