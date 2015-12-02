require_relative 'client'

class CatLady < Client

  def initialize (name,age)
    @name = name
    @age = age
    @pets = []
  end

  def take_pet(animal)
    if animal.species == "cat"
      @pets << animal
      puts "Animal successfully adopted"
      return true
    else
      puts "Cat ladies can only adopt cats. Adoption failed"
      return false
    end
  end

end