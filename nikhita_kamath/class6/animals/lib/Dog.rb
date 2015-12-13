require_relative 'Animal' 

class Dog < Animal 
  attr_accessor :numberofpaws, :droolingness, :barkies

def initialize(numberofpaws,droolingness,barkies,spayed,friendliness,cuteness,ferocity)
  @numberofpaws = numberofpaws
  @droolingness = droolingness
  @barkies = barkies
  @spayed = spayed
  @friendliness = friendliness
  @cuteness = cuteness
  @ferocity = ferocity
end

def to_s
  "Imma dawg and I have #{ numberofpaws } paws, drool #{ droolingness } and #{ barkies }"
end

def talk
  puts "Grrrrrrrr"
end

def move
  "so silent"
end

def judge_person
  "judging"
end

end