puts "what is your age"

age = gets.chomp.to_i


if age == 21
  puts "just old enough!"
elsif age < 21 
  puts "toooo young. get outta here"
else 
  puts "come on in"
end

