require_relative 'digestion'
class Animal
  attr_accessor :species
  include Digestion
  


  def talk
    "i am an animal"
  end
end

