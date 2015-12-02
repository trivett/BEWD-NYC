require_relative 'lib/animal'
require_relative 'lib/cat'
require_relative 'lib/dog'

ladybug = Dog.new("Ladybug","beagle","5","floppy")
niko = Dog.new("Niko","husky","7","pointy")
rachel = Dog.new("Rachel","mutt","1","pointy")

dogs = [ladybug,niko,rachel]

pickypicky = Cat.new("Picky-Picky","ginger","18",true)
peanut = Cat.new("Peanut","calico","2",false)
reena = Cat.new("Reena","tabby","1",true)

cats = [pickypicky,peanut,reena]

# cats.each do |cat|
# 	puts cat
# 	cat.talk
# end

# dogs.each do |dog|
# 	puts dog
# 	dog.talk
# end

peanut.stalk
peanut.pounce
peanut.devour