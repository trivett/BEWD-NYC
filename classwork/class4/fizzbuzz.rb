count = 1

while count < 100 
  if count % 3 == 0 && count % 5 == 0
    puts "fizzbuzz"
  elsif count % 3 == 0 
    puts "fizz"
  elsif count % 5 == 0 
    puts "buzz"
  else
    puts count
  end
  count += 1
end
