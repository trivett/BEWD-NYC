require_relative 'plant'
require_relative 'digestion'
class VenusFlyTrap < Plant

  include Digestion

  def initialize
    @species = "venus fly trap"
  end
  
end