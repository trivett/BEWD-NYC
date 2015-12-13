require_relative 'lib/apartment'
require_relative 'lib/person'

alice = Person.new("Alice", "Dogs", "Math", "30", "brown")

a = Apartment.new("Bed_Stuy", 700, 600)
b = Apartment.new("Cliton Hill", 900, 515)
c = Apartment.new("bornx vill", 1200, 800)

apartment =[a,b,c]

apartment.each do |apt|
	if !apt.rent_is_high? == false
		puts apt
	end
end


