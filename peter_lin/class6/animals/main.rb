require_relative 'lib/cat'
require_relative 'lib/dog'

dog1 = Dog.new('Scobby', 'apples', true)
dog2 = Dog.new('Shaggy', 'oranges', false)
dog3 = Dog.new('Goldy', 'strawberries', true)

cat1 = Cat.new('X', 'fish', false)
cat2 = Cat.new('Y', 'mice', true)
cat3 = Cat.new('Z', 'rice', false)


dogs = [dog1, dog2, dog3]
cats = [cat1, cat2, cat3]

dogs.each do |dog|
  puts dog
  dog.talk
end

cats.each do |cat|
  puts cat
  cat.talk
end

cat1.hunt