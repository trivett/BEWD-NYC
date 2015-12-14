require_relative 'dog'
require_relative 'cat'
require_relative 'animal'

cat1 = Cat.new("always", "meow", "eats all the time", "all four", "has different color eyes")
cat2 = Cat.new("never", "meow", "eats just enough to survive", "only three", "is missing one eye")
cat3 = Cat.new("only sometimes", "meow", "eat", "all four", "has both eyes")

dog1 = Dog.new("wags its tail", "barks all the time", "eat", "num_feet", "eyes")
dog2 = Dog.new("wags never", "bark", "eat", "num_feet", "eyes")
dog3 = Dog.new("wags sometime", "bark", "eat", "num_feet", "eyes")

cat1.killing
cat1.stalking