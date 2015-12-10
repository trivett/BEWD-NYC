require_relative 'lib/cat'
require_relative 'lib/dog'

a = Cat.new("female", 10, "tabby", "small", "Pumpkin")
b = Cat.new("male", 5, "persian", "medium", "Bob")


c = Dog.new("male", 3, "French Bulldog", "medium", "George")
d = Dog.new("female", 15, "Collie", "large", "Sara")

cats = [a,b]
dogs = [c,d]

cat_dog = [a, b, c, d,]

cats.each do |x|
	
	puts x 
	# puts x.talk
	# print x.kill
	# puts x.attack
end

dogs.each do |x|
	puts x
end

