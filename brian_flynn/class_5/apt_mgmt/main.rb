require_relative "lib/apartment"
require_relative "lib/person"

a = Apartment.new("Bed-Stuy", 700, 600)
b = Apartment.new("Clinton Hill", 900, 800)
c = Apartment.new("Brooklyn Heights", 1200, 800)

apartments = [a,b,c]

apartments.each do |x|
  if !x.rent_too_damn_high?
    apt.add_renters("vincent")
    puts x.renters
  end
end



