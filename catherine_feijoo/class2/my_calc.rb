def addition(num_1, num_2)
  num_1 + num_2
end

def subtraction(num_1, num_2)
  num_1 - num_2
end

def multiplication(num_1, num_2)
  num_1 * num_2
end

def division(num_1, num_2)
  num_1 / num_2
end

def modulo(num_1, num_2)
  num_1 % num_2
end

puts "what would you like to do? ('add', 'sub', 'mult', 'div', 'mod')"
puts" [to end enter 'end']"

user_oper = ""

while user_oper != "end"
  user_oper = gets.chomp
  
  case
  when user_oper == "add"
    print "enter first number  > "
    num_1 = gets.chomp.to_f
    print "enter second number > "
    num_2 = gets.chomp.to_f
    puts " > #{addition(num_1, num_2)}"

  when user_oper == "sub"
  	print "enter first number  > "
  	num_1 = gets.chomp.to_f
  	print "number to subtract  > "
  	num_2 = gets.chomp.to_f
  	puts " > #{subtraction(num_1,num_2)}"

  when user_oper == "mult"
  	print "enter first number  > "
  	num_1 = gets.chomp.to_f
  	print "enter second number > "
  	num_2 = gets.chomp.to_f
  	puts " > #{multiplication(num_1,num_2)}"

  when user_oper == "div"
  	print "enter dividend      > "
  	num_1 = gets.chomp.to_f
  	print "enter divisor       > "
  	num_2 = gets.chomp.to_f
  	puts " > #{division(num_1,num_2)}"

  when user_oper == "mod"
  	print "enter dividend      > "
  	num_1 = gets.chomp.to_i
  	print "enter divisor       > "
  	num_2 = gets.chomp.to_i
  	puts " > #{modulo(num_1,num_2)}"

  when user_oper == "end"
  	puts "bye!"
  else
    puts " invalid operation."
    user_oper = gets.chomp
  end
end

