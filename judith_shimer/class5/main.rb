require_relative 'lib/apartment'
require_relative 'lib/person'

a = Apartment.new(400,975,"Midwood",0,true)
b = Apartment.new(800,2300,"Clinton Hill",3,false)
c = Apartment.new(300,4000,"Williamsburg",0,false)

j = Person.new("Judith",27)
s = Person.new("Spider",1)

apartments = [a,b,c]

a.add_renter(j)
a.add_renter(s)

apartments.each do |apt|
	if !apt.rent_too_damn_high && apt.is_occupied?
		puts apt
		apt.renters.each do |renter|
			puts "The renter's name is #{renter.name}"
		end
	end
end