puts "give me a number"
num1 = gets.chomp.to_i

puts "give me another number"
num2 = gets.chomp.to_i

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

answer = subtract(num1, num2)

puts "The answer is #{answer}"