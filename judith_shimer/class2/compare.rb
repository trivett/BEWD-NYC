puts "Pick an integer, any integer..."
int = gets.chomp.to_i

def test(a)
	if a % 2 > 0
		puts "This integer is odd!"
	else
		puts "This integer is even!"
	end
end

puts test(int)