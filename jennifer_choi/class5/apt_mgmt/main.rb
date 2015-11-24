require_relative 'lib/apartment'
require_relative 'lib/person'

a = Apartment.new("tribeca", 5000, 600)
b = Apartment.new("murray hill", 2000, 100)
c = Apartment.new("stuytown", 3000, 200)

v = Person.new("vincent", "Brown", 28, "B")

#loop over apts, and only put apt if rent is not too damn high
apartments = [a, b, c]

puts "Affordable apartments:"
apartments.each do |apt|
	if !apt.rent_too_damn_high?
		puts apt
	end
end

puts "===\nWho's renting:"
apartments.each do |apt|
	if !apt.rent_too_damn_high?
		apt.add_renters(v)
		#puts apt.renters
		apt.renters.each do |renter|
			puts apt
			puts "Rented by #{renter.name}"
		end
	end
end
puts "===\nVacant Apartments:"
apartments.each do |apt|
	if !apt.is_occupied?
		puts apt
		puts "this apartment is unoccupied"
	end
end