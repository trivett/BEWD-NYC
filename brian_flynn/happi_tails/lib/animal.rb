class Animal
  attr_accessor :pet_name, :species, :toy_amount

  def initialize(pet_name, species, toy_amount)
      @pet_name = pet_name
      @species = species
      @toy_amount = toy_amount.to_i
  end

  def give_toys(amount)
    @toy_amount += amount
  end

  def to_s
    "#{@pet_name.capitalize} is a #{species} who has #{toy_amount} toys."
  end


end

puts "============================="


animal1 = Animal.new("willa", "dog", "0")
puts ""
puts animal1

puts ""

puts "Give toys? Yes or No"
puts ""
answer = gets.chomp.capitalize

if answer == "Yes"
  puts ""
  puts "How many?"
  puts ""
  x = gets.to_i
  animal1.give_toys(x)
  puts ""
  puts animal1
elsif answer == "No"
  puts "You are mean and bad."
else
  puts "You messed up a yes or no question. You are the worst!"
end












