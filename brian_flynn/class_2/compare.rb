puts "Gimme an integer"
num = gets.chomp.to_i

def compare(num)
  if num % 2 == 0
    puts "Your integer is even"
  elsif num % 2 !=0
    puts "Your integer is odd"
  end
end

puts compare(num)
