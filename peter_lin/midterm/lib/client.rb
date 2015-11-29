require_relative 'play'

class Client 
  attr_accessor :name, :age, :pets

  include Play

  def initialize (name,age)
    @name = name
    @age = age
    @pets = []
  end

  def to_s
    return "#{ @name}, age: #{ age } "
  end

  def take_pet(animal)
    @pets << animal
    puts "Animal successfully adopted"
  end

  def show_pets_with_nums()
    i = 0
    @pets.each do |pet|
      puts "(#{i}) #{pet}"
      i += 1
    end
  end

end