My_nums = [-10, -9, -8, -7, -6, -5, 0, 1, 2, 3, 4, 5, 100, 200, 300, 400, 500, 600, 700, 800, 900, 10000, 200000]

# puts My_nums.min 

def my_max(nums)
   current_max = nums.first
   nums.each do |x|
       if x >= current_max
           current_max = x
       end
   end
   return current_max
end

puts my_max(My_nums)















