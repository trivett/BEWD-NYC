puts "What would you like to do? ('add', 'subtract', 'multiply', 'divide', 'modular_division')"
operation = gets.chomp

puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i

def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def multiply(a,b)
	a * b
end

def divide(a,b)
	a / b
end

def modular_division(a,b)
	a % b
end

if operation == "add"
	puts "The answer is #{add(num1, num2)}."
elsif operation == "subtract"
	puts "The answer is #{subtract(num1, num2)}."
elsif operation == "multiply"
	puts "The answer is #{multiply(num1, num2)}."
elsif operation == "divide"
	puts "The answer is #{divide(num1, num2)}."
elsif operation == "modular_division"
	puts "The answer is #{divide(num1, num2)}."
else
	puts "That is not a valid input! Try again."
end




