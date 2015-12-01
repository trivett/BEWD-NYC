class Apartment
  attr_accessor :sq_footage, :price, :rent, :neighborhood, :num_bedrooms, :elevator, :renters

  def initialize(neighborhood, rent, sq_footage)
    @neighborhood = neighborhood
    @rent = rent.to_i
    @sq_footage = sq_footage.to_i
    @elevator = false
    @renters = []
    @num_bedrooms = 1
  end

  def to_s
    "I have a lovely apartment for you in #{ @neighborhood.capitalize }, it's only $#{ @rent } and you get #{ @sq_footage }! Cozy! "
  end

  def rent_too_dam_high?
    @rent > @sq_footage * 2
  end

  def is_occupied?
    @renters.length == 0
    # @renters.any?
  end

  def add_renters(renter)
    @renters << renter
  end

end

# a = Apartment.new("Tribeca", 5000, 600)
# a.rent = 8000
# a.renters << "PEter"


# puts a.is_occupied?
# puts a.rent_too_dam_high?()






