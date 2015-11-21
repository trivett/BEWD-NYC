require_relative 'lib/dog'
require_relative 'lib/cat'

cat1 = Cat.new('brown', 'siberian', 'frances')
cat2 = Cat.new('grey', 'russian blue', 'nimbus')
cat3 = Cat.new('black and white', 'american shorthair', 'pepper')

dog1 = Dog.new('white', 'bichon', 'luke')
dog2 = Dog.new('beige', 'shi tsu', 'laney')
dog3 = Dog.new('black and white', 'beagle', 'snoopy')


cats = [cat1, cat2, cat3]

dogs = [dog1, dog2, dog3]

cats.each do |cat|
  puts cat
  cat.talk
end

dogs.each do |dog|
  puts dog
  dog.talk
end