#require_relative 'lib/cat'
#require_relative 'lib/dog'
require_relative 'lib/animal'

a = Dog.new("Grover", "Bones", "Brown")
b = Dog.new("Barkley", "Fish", "Spots")
c = Dog.new("Lassie", "Chicken Tikka Masala", "golden")
d = Cat.new("Kitchka", "hardly", "brown")
e = Cat.new("Whiskers", "moderately", "spotted")
f = Cat.new("Meowzlie", "incredibly", "black")

dogsandcats = [a,b,c,d,e,f]

dogsandcats.each do |animal|
	puts animal
	animal.talk
end
