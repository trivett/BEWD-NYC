puts "Hor old are you sir?"
age = gets.chomp.to_i

def checkAge(age)
  if age == 21
      puts "just old enough! welcome to the dark side."
  elsif age<21
    puts "Sir, you are not 21. Get lost."
  else
    puts "come on in, have a drink."
  end
end

puts "#{checkAge(age)}"
