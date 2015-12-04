require_relative 'lib/apartment'
require_relative 'lib/person'

a = Apartment.new("Bed-Stuy", 7, 600)

b = Apartment.new("Clinton Hill", 900, 800)
c = Apartment.new("Brooklyn Heights", 1200, 800)


v = Person.new("vincent", "B", "English")

apartments = [a,b,c]

apartments.each do |apt|
  if !apt.rent_too_damn_high?
    # puts apt
  end
end

apartments.each do |apt|
  if !apt.rent_too_damn_high?
    apt.add_renters(v)
  end
  apt.renters.each do |renter|
    puts renter
  end
end

