puts "Give me an integer and I'll tell you whether it's even or odd. "
int = gets.chomp.to_i

if int.is_a? Integer
    if int % 2 == 0
        puts "Even Steven."
    else
        puts "Odd Todd."
    end
else
    puts "Not and integer."
end
