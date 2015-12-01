# require 'pry'
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

s = Shelter.new("Jessy's")
puts s
c = Client.new("Thomas", 31)
puts c
a = Animal.new("Sparky", "Dog")
puts a