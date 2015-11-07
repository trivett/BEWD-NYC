puts "How old are you?"
age = gets.chomp.to_i

  if age == 21
  	puts "Just old enough!"
  elsif age < 21
  	puts "Get out of here!"
  else
  	puts "Come on in!"
  end
