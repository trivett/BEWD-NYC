class Apartment
	attr_accessor :sq_footage, :rent, :num_bedrooms, :elevator, :renters

	def initialize(neighborhood, rent, sq_footage)
		@neighborhood = neighborhood
		@rent = rent.to_i
		@sq_footage = sq_footage.to_i
		@elevator = false
		@retners = []
		@num_bedrooms = 1
	end
	def to_s
		"i habve a lovely apartmet in #{ @neighborhood.upcase }, it's only #{@rent} and you get #{@sq_footage} square feet! cozy!"
		end
	def rent_too_damned_high
		if @sq_footage * 5 <= @rent
			puts "true"
		else
			puts "false"
		end


		def is_occupied
			if @renters.length == 0 #or if renters .any?
				return false
			else
				return true
			end 
		end
end