class Person
  attr_accessor :name, :city, :age

  def initialize(name, city, age)
    @name = name
    @city = city
    @age = age
  end

  def to_s
    "#{@name} from #{city} is #{age} years old"
  end



end

brian = Person.new("Brian", "New York", "29")

puts brian
