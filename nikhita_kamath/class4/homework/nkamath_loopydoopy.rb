my_arr = [34, 57, 82, 20345, 23]

def my_max(array)
    if array[0] > array[1] && array[0] > array[2] && array[0] > array[3] && array[0] > array[4] && array[0] > array[5]
   	   puts array[0] 
    elsif array[1] > array[2] && array[1] > array[3] && array[1] > array[4] && array[1] > array[5]
   	   puts array[1]
    elsif array[2] > array[3] && array[2] > array[4] && array[2] > array[5]
   	   puts array[2]
    elsif array[3] > array[4] 
   	   puts array[3]
    else 
       puts array[4]
   end
end

puts my_max(my_arr)