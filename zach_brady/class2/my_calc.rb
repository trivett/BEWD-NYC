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

puts "#{num1} added to #{num2} is #{add(num1, num2)}"
puts "#{num1} minus #{num2} is #{subtract(num1, num2)}"
