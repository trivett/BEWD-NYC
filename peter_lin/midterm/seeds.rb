require_relative 'lib/animal'
require_relative 'lib/client'
require_relative 'lib/catlady'
require_relative 'lib/shelter'

def create_shelter_data

  s = Shelter.new("The General Assembly Shelter")

  s.animals << Animal.new('Goldy','gold fish')
  s.animals << Animal.new('Matt','panda')
  s.animals << Animal.new('Chris','lemur')
  s.animals << Animal.new('Chris','cat')
  s.animals << Animal.new('Richard','cat')
  s.animals << Animal.new('Charzard','cat')

  s.clients << Client.new('Peter', '100')
  s.clients << Client.new('Andy', '75')
  s.clients << Client.new('Judy', '30')
  s.clients << CatLady.new('Mary', '30')

  return s

end