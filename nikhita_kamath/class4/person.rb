class Person
  attr_accessor :name, :age, :gender, :superpower, :weakness, :spiritanimal

  def initialize(name,age,gender,superpower,weakness,spiritanimal)
    @name = name
    @age = age
    @gender = gender
    @superpower = superpower
    @weakness = weakness
    @spiritanimal = spiritanimal
  end

  def to_s
    "#{ @name } is a #{ age } year old #{ @gender } #{ @superpower }, whose weakness is #{ @weakness } and whose spirit animal is a #{ @spiritanimal }"
  end

  def birthday
    @age += 1
  end

  def old?
    if @age > 21
      puts "you're too old to be in the club"
    else 
      puts "come on in"
    end
  end

end 

trivett = Person.new("Vincent",21,"male","ruby gem collector","hashes","cat")
eddie = Person.new("Eddie",30,"male","seamless order-putter","naps","panther")
trevor = Person.new("Trevor",34,"male","turning straw to gold", "pizza","pink fairy armadillo")

people = [trivett, eddie, trevor]

people.each do |p|
  p.birthday
  puts p
  puts p.old?
end

