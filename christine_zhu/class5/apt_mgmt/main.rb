require_relative 'lib/apartment' #telling ruby to go look for in the library folder, the apartment file
require_relative 'lib/person'

a = Apartment.new("Tribeca", 5000, 600)
c = Apartment.new("Clinton Hill", 1300, 800)
d = Apartment.new("Ditmas Park", 1000, 1000)

chris = Person.new("christine", "A", "fashion")

apartments = [a, c, d]

apartments.each do |apt|
	if !apt.rent_too_damn_high?
		puts apt
	end
end

def add_renters(person)
	@renters << person
end

apartments.each do |apt|
	if !apt.rent_too_damn_high?
		apt.add_renters(chris)
	end
	apt.renters.each do |renters|
		puts renters
	end
end








