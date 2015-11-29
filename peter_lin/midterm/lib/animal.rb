require_relative 'play'

class Animal 
  attr_accessor :name, :species, :toys

  include Play

  def initialize (name,species)
    @name = name
    @species = species
    @toys = []
  end

  def to_s
    return "#{ @name }, species: #{ species }"
  end

  def show_toys_with_nums()
    i = 0
    @toys.each do |toy|
      puts "(#{i}) #{toy}"
      i += 1
    end
  end

end