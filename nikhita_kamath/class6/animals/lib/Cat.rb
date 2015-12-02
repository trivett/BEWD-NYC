require_relative 'Animal' 
require_relative 'module'

class Cat < Animal
  attr_accessor :name, :breed, :age
  include CatsGoneWild

def initialize(name,breed,age,spayed,friendliness,cuteness,ferocity)
  @name = name
  @breed = breed
  @age = age.to_i
  @spayed = spayed
  @friendliness = friendliness
  @cuteness = cuteness
  @ferocity = ferocity
end

def to_s
  "#{name} is a #{breed} and #{age} years old"
end

def talk
  "Prrrrrr"
end

def move
  "so silent"
end

def judge_person
  "judging"
end

end
