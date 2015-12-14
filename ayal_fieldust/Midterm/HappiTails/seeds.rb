require_relative "lib/shelter"
require_relative "lib/client"
require_relative "lib/animal"


#this file initializes the shelter to alreadty have some data inside it.
def createAshelter
      shelter1 = Shelter.new("The Shelter")

      shelter1.clients << Client.new("ayal","31")
      shelter1.clients << Client.new("shy","29")
      shelter1.clients << Client.new("Edan","30")
      shelter1.clients << Client.new("Ronny","55")
      shelter1.clients << Client.new("David","16")

      shelter1.animals <<  Animal.new("Oren","dog")
      shelter1.animals <<  Animal.new("shirly","cat")
      shelter1.animals <<  Animal.new("Yossi","snake")
      shelter1.animals <<  Animal.new("James","monkey")
      shelter1.animals <<  Animal.new("Eric","frog")

      eli = Animal.new("Eli","fish")

      mike = Client.new("Mike","45")

      mike.pets << eli

      shelter1.clients << mike

      return shelter1

end
