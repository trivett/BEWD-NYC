puts "enter an integer"
num1 = gets.chomp.to_i
if num1 % 2 == 0
	puts "even"
else num1 % 2 == 1
	puts "odd"
end
