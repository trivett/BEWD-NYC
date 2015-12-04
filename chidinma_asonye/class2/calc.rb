puts "give me the first number"

num1 = gets.chomp.to_i

puts "give me the second number"

num2 = gets.chomp.to_i

def add(num1,num2)
  num1 + num2
	end

def subtract(a,b)
	a - b 
end

answer = subtract(num1, num2)

puts "the answer is #{answer}"
