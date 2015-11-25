
def my_max(array)
	if array.length == 0
		return

  elsif(array.length == 1)
	  return array[0]

  else
  	max_val = array[0]
  	1.upto(array.length-1) do |x|
  		if array[x] > max_val
  			max_val = array[x]
  		end
  	end
  	return max_val
  end
end

my_arr = [12, 9745, 903, 746, 8, 2, 97645, 98664, 23565, 34]

puts my_arr.max
puts my_max(my_arr)