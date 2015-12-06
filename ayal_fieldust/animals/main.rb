require_relative "lib/cat.rb"
require_relative "lib/dog.rb"


cat1 = Cat.new("persian","black","male")
cat2 = Cat.new("street","gray","male")
cat3 = Cat.new("house","white","female")

# dog1 = Dog.new("labrador",7,600)
# dog2 = Dog.new("bulldog",900,800)
# dog3 = Dog.new("chiwawa",1200,800)


cat = [cat1,cat2,cat3]
# dog = [dog1, dog2, dog3]


cat.each do |cat|
    puts cat
    cat.talk
end

# dog.each do |dog|
#     puts dog
#     dog.talk
# end
