require_relative 'apartment'
require_relative 'person'

a = Apartment.new("Bed-Stuy", 715, 600, 5)

b = Apartment.new("Clinton Hill", 900, 800, 2)

c = Apartment.new("Brooklyn Heights", 5, 200, 10)

apartments=[a,b,c]

n = Person.new("Nikhita",23,"female","invisibility cloakster","dogs","Beyoncé")


apartments.each do |apt|
  if apt.rent_too_damn_high? == false
     apt.add_renters(n)
     apt.renters.each do |renter|
       puts renter.name
      end
    puts apt
  end
end
