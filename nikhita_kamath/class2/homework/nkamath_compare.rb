puts "Hit me with an integer, buddy"
integer = gets.chomp.to_i

def compare_integer(a)
    if a%2 == 1
      puts "Your integer is odd"
    elsif a%2 == 0
      puts "Your integer is even" 
    end
end

puts compare_integer(integer)