require_relative "lib/cat"
require_relative "lib/dog"


cat1 = Cat.new("Marbles", "black", "adorably small", "barbarically")
cat2 = Cat.new("Cupcake", "white", "comically fat", "Hitler-level")
cat3 = Cat.new("Fluffy", "tiger print", "athletically built", "demonically")

cats = [cat1, cat2, cat3]

dog1 = Dog.new("Grandma", "tan", "teacup sized", "kinda")
dog2 = Dog.new("Thomas", "chocolate", "bear sized", "very")
dog3 = Dog.new("Willa", "white", "medium sized", "super")

dogs = [dog1, dog2, dog3]

animals = [cats, dogs]

# puts ""
# puts animals
# puts ""

# cats.each do |speak|
#   speak.talk
# end

#  puts ""

# dogs.each do |speak|
#   speak.talk
# end

#  puts ""

cats.each do |complain|
 complain.talk
end

cats.each do |eat|
  eat.devour
end




