puts "Enter a number:"
num1 = gets.chomp.to_i

def mod(num1)
	num1%2
end

if mod(num1) == 0
	puts "The number is even."
elsif mod(num1) == 1
	puts "The number is odd."
end




