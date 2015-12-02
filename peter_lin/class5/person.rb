class Person
  attr_accessor :name, :state, :country, :age

  def initialize(name, state, country, age)
    @name = name
    @state = state
    @country = country
    @age = age
  end

  def to_s
    "#{ @name } lives in #{ @state }, #{ @country }. Age : #{ @age }"
  end

  def birthday
    @age += 1
  end
end

peter = Person.new('Peter', 'NY', 'USA', 23)
richard = Person.new('Richard', 'NJ', 'USA', 24)
alice = Person.new('Alice', 'PA', 'USA', 25)

people = [peter, richard, alice]


people.each do |person|
  person.birthday()
  puts person
end


# puts peter.name
# puts peter.state
# puts peter.country