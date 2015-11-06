puts "This program will determine if a number is even or odd."
puts "Please enter a number."

number = gets.chomp.to_i

if number%2 == 0
  puts "the givin number is even."
else
  puts "The givin number is odd."
end
puts "thank you for playing."
