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
		"I have a lovely apartment for you in #{@neighborhood}, it's only $#{@rent}, and you get #{@sq_footage} sq feet!"
	end


	def rent_too_damn_high?
		@rent > @sq_footage
	
	end

	def is_occupied?
		if @renters.length == 0
			puts "unoccupied"
		else
			puts "occupied"
		end
	end

end

a = Apartment.new("Tribeca", 5000, 600)
b = Apartment.new("Williamsburg", 2400, 800)

puts a
puts b