my_arr = [5,7,3,2,0,9,1,6,7]

puts my_arr.max

# The max function outputs the largest number in the array

def getMax(array)
	sol = array[0]
	array.each do |num|
		if num > sol
			sol = num
		end
	end
	return sol
end

puts getMax(my_arr)
