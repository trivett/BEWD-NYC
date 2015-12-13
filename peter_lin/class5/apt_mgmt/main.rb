require_relative 'lib/apartment'
require_relative 'lib/person'

a = Apartment.new("Bed-Stuy", 7, 600)
b = Apartment.new("Clinton Hill", 900, 800)
c = Apartment.new("Bed-Stuy", 1200, 800)

v = Person.new("vincent", "B", "English", 50)
apartments = [a,b,c]

apartments.each do |apt|
  if !apt.rent_too_dam_high?
    puts apt
  end
end

apartments.each do |apt|
  if !apt.rent_too_dam_high?
    apt.add_renters(v)
    apt.renters.each do |renter|
      puts renter.name
    end
  end
end

c.add_renters("Ayal")
puts c.renters