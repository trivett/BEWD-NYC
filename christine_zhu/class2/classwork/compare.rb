puts "select an integer"
val = gets.chomp.to_i

def even_or_odd(input)
	input % 2
end

if even_or_odd(val) == 0
	puts "#{val} is even"
else even_or_odd(val) != 0
	puts "#{val} is odd"
end