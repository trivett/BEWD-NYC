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

	def add_renter(name)
		@renters << name
	end

	def is_occupied?
		@renters.any?
	end

	def rent_too_damn_high
		@sq_footage * 10 < @rent
	end
end