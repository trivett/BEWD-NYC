my_arr = [16, 49, 16743, 67, 15, 2500000]
#this first sets the stage for the array, setting variable
def my_max(arr)
	#this defines or names what it is im going to be doing to any array, 
	#anything in the () is the name of the array to which the method is being applied to.
	max = 0
	# set max to zero
	arr.each do |num|
		# loops over each member of the array and calling it num
		
		if num > max
			#comparing num to max checking if max is greater then num
			max = num
			# sets max to num if num is bigger
		end
	end
	max
	#returning max
end

puts my_max(my_arr)
#displaying the output of all it.



#min