module Think
  def ponder
    puts 'hmmm'
  end

  def draw_conclusions_from_empirical_observation
    puts "aha!"
  end
end

class Person
  include Think
end

class ArtificialIntelligence
  include Think
end

p = Person.new
a = ArtificialIntelligence.new

a.ponder
p.draw_conclusions_from_empirical_observation