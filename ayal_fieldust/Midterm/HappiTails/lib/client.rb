class Client
  attr_accessor :name, :age, :pets #not sure if should be pets or animals.

  def initialize (name, age)
    @name = name
    @age = age
    @pets = [] #no input for this array because it starts out empty.
  end


#I could not figure out how to get this to work:
  # def showPetsOfSpecificClient
  #   puts  @pets.count
  #
  #     @pets.each do |pets|
  #         puts  client.pets
  #     end
  # end


end
