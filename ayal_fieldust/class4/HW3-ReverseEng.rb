# using .max to output largest value in givin array.
my_arr = [4, 92, 20934, 4324, 999946, 2903, 236, 902]
puts my_arr.max

# .max goes through the array and returns the largest value.
# now i will create a method that does the same thing without using the actual .max method.

puts "our method:"
my_example_array = my_arr

def my_arr (array)
    count = array.length
    maxNum = array[0]
    i = 0
    while (count > i && count != i+1)
        if maxNum < array[i+1]
            maxNum = array[i+1]
        end
        i += 1
    end
    maxNum
end

puts "the largest value in our new array is: #{my_arr(my_example_array)}"
