puts "what operation would you like to perform? ('add', 'subtract', 'multiply', 'divide')"
operation = gets.chomp

puts "enter the first number"
num1 = gets.chomp.to_i


puts "enter the second number"
num2 = gets.chomp.to_i


def add(a, b)
  a + b
end



def subtract(a, b)
  a - b
end


def multiply(a, b)
  a * b
end


def divide(a, b)
  a / b.to_f
end


if operation == 'add'
  puts add(num1, num2)
elsif operation == 'subtract'
  puts subtract(num1, num2)
elsif operation == 'multiply'
  puts multiply(num1, num2)
elsif operation == 'divide'
  puts divide(num1, num2)
else
  puts 'invalid operation'
end