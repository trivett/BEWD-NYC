require_relative 'lib/apartment'

a = Apartment.new("Bed-Stuy", 715, 600, 5)

b = Apartment.new("Clinton Hill", 900, 800, 2)

c = Apartment.new("Brooklyn Heights", 5, 200, 10)

apartments=[a,b,c]

apartments.each do |whaddup|
  if whaddup.rent_too_damn_high? == false
    puts whaddup
  end
end

