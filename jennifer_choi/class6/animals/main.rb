require_relative 'lib/cat.rb'
require_relative 'lib/dog.rb'


a = Cat.new("Fluffy", "retractable", 9)
b = Cat.new("Niko", "retractable", 8)
c = Cat.new("Clement", "retractable", 7)

d = Dog.new("Fido", 9, "not retractable", 1)
e = Dog.new("Dexter", 10, "not retractable", 1)
f = Dog.new("Oliver", 11, "not retractable", 1)

cat_arr = [a,b,c]
dog_arr = [d,e,f]

cat_arr.each do |meow|
	puts meow.to_s
	meow.talk
	meow.attack
	meow.stalk
end

dog_arr.each do |woof|
	puts woof.to_s
	woof.talk
end