puts "how old are you?"
age = gets.chomp.to_i

if age < 21
  puts "get out of here!"
elsif age == 21
  puts "you are just old enough!"
else age >= 21
  puts "come on in"
end