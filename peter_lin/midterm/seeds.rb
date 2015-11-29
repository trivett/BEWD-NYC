require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/catlady'
require_relative 'lib/shelter'

def create_shelter_data()

  s = Shelter.new("The General Assembly Shelter")

  a1 = Animal.new('Goldy','gold fish')
  a2 = Animal.new('Matt','panda')
  a3 = Animal.new('Chris','lemur')
  a4 = Animal.new('Chris','cat')
  a5 = Animal.new('Richard','cat')
  a6 = Animal.new('Charzard','cat')


  c1 = Client.new('Peter', '100')
  c2 = Client.new('Andy', '75')
  c3 = Client.new('Judy', '30')
  c4 = CatLady.new('Mary', '30')

  s.animals << a1
  s.animals << a2
  s.animals << a3
  s.animals << a4
  s.animals << a5
  s.animals << a6

  s.clients << c1
  s.clients << c2
  s.clients << c3
  s.clients << c4

  return s

end