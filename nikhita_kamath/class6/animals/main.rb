require_relative 'lib/Dog'
require_relative 'lib/Cat'
require_relative 'lib/module'

dog1 = Dog.new(3,"a lot","bark at the mailman","spayed","super friendly","super cute","fierce")
dog2 = Dog.new(2,"a little","bark rarely","not spayed","not so friendly","uglyyy","not so fierce")
dog3 = Dog.new(1,"not at all","bark incessantly","spayed","antisocial","pretty","fierce")

cat1 = Cat.new("Trevor","persian",3,"spayed","charmer","beautiful","fierce")
cat2 = Cat.new("Katie","siamese",4,"not spayed","bookworm","gross","not so fierce")
cat3 = Cat.new("Eliza","manecoon",6,"spayed","hates everyone","gorgeous","fierce")


dogs = [dog1,dog2,dog3]
cats = [cat1, cat2, cat3]

dogs.each do |arf|
  puts arf.ferocity
  puts arf.talk
end

cats.each do |prr|
  puts prr.name
  puts prr.talk
  puts prr.evilness
end