def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def multiply(a,b)
    a * b
end

def devide(a,b)
    a / b
end

def remainder(a,b)
    a % b
end

puts "Hello Sir, what would you like to do today?"
puts "Please type in the opporation you would like to preform: add, subtract, multiply devide or check a remainder"

operation = gets.chomp

puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "enter the second number:"
num2 = gets.chomp.to_i


if operation == "add"
  puts "The answer is #{add(num1,num2)}"
elsif operation == "subtract"
  puts "The answer is #{subtract(num1,num2)}"
elsif operation == "multiply"
  puts "The answer is #{multiply(num1,num2)}"
elsif operation == "devide"
  puts "The answer is #{devide(num1,num2)}"
elsif operation == "remainder"
  puts "The answer is #{remainder(num1,num2)}"
else
  puts "you entered an invalide operation. Goodbye!"
end


puts "THANK YOU FOR USING AYAL's CALC. A BILL WILL BE SENT TO YOUR EMAIL."
