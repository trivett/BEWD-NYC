require_relative 'lib/apartment'

a = Apartment.new('Bed-Stuy', 715, 600)
b = Apartment.new('Clinton Hill', 900, 800)
c = Apartment.new('Brooklyn Heights', 1200, 800)

apartments = [a, b, c]


apartments.each do |apt| 
    if !apt.rent_too_damn_high 
        puts apt
    end
end


c.add_renter("Ayal")
