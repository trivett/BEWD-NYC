puts "plz enter an int. to end enter -1."

user_num = 0

while user_num != -1
  user_num = gets.chomp.to_i
  if (user_num % 2) == 0
    puts "even"
  else
    puts "odd"
  end
end