
puts "Welcome to Brian's simple calculator!"

calc_options = ["add", "subtract", "multiply", "divide"]
puts "What would you like to do?:"
puts " "
puts calc_options
puts " "
puts "==============="
puts " "
option = gets.chomp

def calculate(option)
  puts " "
  puts "Enter the first number"
  num_1 = gets.chomp.to_i

  puts " "
  puts "Enter the second number"
  num_2 = gets.chomp.to_i
  puts " "

  if option == "add"
    answer = num_1 + num_2
    puts "The sum of #{num_1} and #{num_2} is #{answer}"
  elsif option == "subtract"
    answer = num_1 - num_2
    puts "#{num_1} minus #{num_2} is #{answer}"
  elsif option == "multiply"
    answer = num_1 * num_2
    puts "#{num_1} times #{num_2} is #{answer}"
  elsif option == "divide"
    answer = num_1 / num_2
    puts "#{num_1} divided #{num_2} is #{answer}"
  else
    puts "#{option.capitalize} wasn't one of the options. Rerun the program and do it right, or I'll fart in your mouth."
    puts " "
    puts "Thaaaaaaanks."

  end
end

print calculate(option)
puts "   "
