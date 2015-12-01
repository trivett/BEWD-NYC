class Apartment
  attr_accessor :sq_footage, :rent, :neighborhood, :num_bedrooms, :elevator, :renters

  def initialize(neighborhood, rent, sq_footage, num_bedrooms)
    @neighborhood = neighborhood
    @rent = rent
    @sq_footage = sq_footage.to_i
    @num_bedrooms = num_bedrooms
    @elevator = false
    @renters = []
  end

  def to_s
    "I have a lovely apartment for you in #{ @neighborhood }, it's only #{ @rent } for #{ num_bedrooms } bedrooms and you get #{ @sq_footage } square feet! Cozy!"
  end

  def rent_the_apartment
    @renters << 5
  end

  def is_occupied?
    if renters[0] > @num_bedrooms
      puts "unlivable"
    elsif renters[0] == @num_bedrooms
      puts "occupied with the perfect amount"
    else 
      puts "looking for roomies!"
    end
  end

  def rent_too_damn_high?
    @sq_footage * 1 < @rent
  end

  def add_renters(person)
    @renters << person
  end

end

# a = Apartment.new("tribeca", 5000, 600, 3)

#b = Apartment.new("lower east side", 3000, 500, 6)

#apartments = [a, b]

#apartments.each do |peeps|
#  peeps.rent_the_apartment
#  puts peeps
#  puts peeps.is_occupied?
#  puts peeps.rent_too_damn_high?
#end