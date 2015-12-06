# require 'pry' like IRB

class Animal
  attr_accessor :name, :species, :toys #creates the placeholders you want in the class

  def initialize(name,species) #initialize these variables in the class
    @name = name #instance variable
    @species = species
    @toys = [] #no input for this array because it starts out empty.
  end


end

#binding.pry
