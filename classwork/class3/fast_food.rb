food = ["big whopper", "chicken sandwich", "nuggets", "fries", "ice cream"]

puts '***********'
print food
puts ''

puts "The 2nd item is #{ food[1] }"
puts "The 5th item is #{ food[4] }"


puts "After reversing, The 4th item is #{ food.reverse[3] }"

last = food.reverse.pop()
puts "#{ last } was removed"

puts '***********'
print food
puts ''