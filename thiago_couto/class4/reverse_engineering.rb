# Reverse Engineering
# the Max and Min methods

a = [4, 92, 20934, 4324, 46, 2903, 236, 902]
puts "Ruby's max #{a.max}"

def my_max array
	max = array[0]
	array.each do |index|
		if index > max
			max = index
		end
	end
	return max
end
puts "My max #{my_max(a)}"

puts "Ruby's min #{a.min}"

def my_min array
	min = array[0]
	array.each do |index|
		if index < min
			min = index
		end
	end
	return min
end
puts "My min #{my_min(a)}"