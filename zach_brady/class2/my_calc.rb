puts "What would you like to do? ('add', 'subtract', 'multiply', 'divide')"
operation = gets.chomp

valid_operations = ['add', 'subtract', 'multiply', 'divide']

if !valid_operations.include? operation
    puts "Not a valid operation"
end

puts "Give me the first number: "
num1 = gets.chomp.to_i

puts "Give me the second number: "
num2 = gets.chomp.to_i

def add(num, other_num)
    num + other_num
end

def subtract(num, other_num)
    num - other_num
end

def multiply(num, other_num)
    num * other_num
end

def divide(num, other_num)
    num / other_num
end

case operation
when 'add'
    puts add(num1, num2)
when 'subtract'
    puts subtract(num1, num2)
when 'multiply'
    puts multiply(num1, num2)
when 'divide'
    puts divide(num1, num2)
end
