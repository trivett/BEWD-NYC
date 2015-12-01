require_relative 'shelter'
require_relative 'animal'
require_relative 'client'

@happitails = Shelter.new('HappiTails')

@happitails.animals << Animal.new("Picky-Picky","cat")
@happitails.animals << Animal.new("Guthrie","dog")
@happitails.animals << Animal.new("Peanut","cat")

@happitails.clients << Client.new("Jude",27)
@happitails.clients << Client.new("Esty",32)
@happitails.clients << Client.new("Nancy",62)