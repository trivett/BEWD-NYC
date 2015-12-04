class Apartment
  attr_accessor :sq_footage, :rent, :neighborhood, :num_bedrooms, :elevator, :renters

  def initialize(neighbhorhood, rent, sq_footage)
    @neighbhorhood = neighbhorhood
    @rent = rent.to_i
    @sq_footage = sq_footage.to_i
    @elevator = false
    @renters = []
    @num_bedrooms = 1
  end


  def to_s
    "#{@neighbhorhood.capitalize} costs $#{@rent}. Sq. Ft: #{@sq_footage}."
  end


  def is_occupied?
    @renters.length == 0
  end


  def rent_too_damn_high?
   @rent/4 > @sq_footage
  end

  def add_renters(person)
    @renters << person
  end

end






