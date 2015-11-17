puts "What number would you like to compare?"
num = gets.chomp.to_i

def compare(a)
	if a % 2 == 1
		puts "Your number is odd"
	else a % 2 == 2
		puts "Your number is even"
	end
end

compare(num)