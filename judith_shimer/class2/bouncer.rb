puts "How old are you?"
age = gets.chomp.to_i

def check_age(a)
  if a == 21
  	puts "Just old enough!"
  elsif a < 21
  	puts "Get out of here!"
  else
  	puts "Come on in!"
  end
end

print check_age(age)