class Apartment
	attr_accessor :sq_footage, :rent, :neighborhood, :num_bedrooms, :elevator, :renters
	def initialize(sq_footage,rent,neighborhood,num_bedrooms,elevator)
		@sq_footage = sq_footage.to_i
		@rent = rent.to_i
		@neighborhood = neighborhood
		@num_bedrooms = num_bedrooms.to_i
		@elevator = elevator
		@renters = []
	end

	def to_s
		"Rent: $#{@rent}/month\nSquare Footage: #{@sq_footage}\nNeighborhood: #{@neighborhood}\nBedrooms: #{@num_bedrooms}\nElevator: #{@elevator}\nRenters: #{@renters.length}"	
	end

	def is_occupied?
		if @renters.any?
			puts "Occupied"
		else
			puts "Unoccupied"
		end
	end

	def rent_too_damn_high
		if @sq_footage * 10 > @rent
			puts "The rent is fine high."
		else
			puts "The rent is too damn high."
		end
	end
end