nums = [376,406,2985704,58765,2938570,58765,580675,76879,3363]
puts "The array: #{nums}"
#the easy thing to do would be to print nums.max, but read on!!!

def my_max(array)
	array.sort.last
end

puts "The biggest number in the array is #{my_max(nums)}"