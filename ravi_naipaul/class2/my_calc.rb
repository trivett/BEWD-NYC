puts "Would you like to do?  
   [add], 
   [subtract], 
   [multiply], 
   [divide]
   [remainder]"
response = gets.chomp

case response.downcase
when 'add'
def addition_function
           puts "What number would you like to add?"
           n1 = gets.to_i
           puts "enter the other number"
           n2 = gets.to_i
           answer = n1 + n2
           puts "The sum of... #{n1} + #{n2} = #{answer}"
end
addition_function()


#Subtract
when 'subtract'
def subtraction_function
           puts "What number would you like to subtact?"
           n1 = gets.to_i
           puts "enter the other number"
           n2 = gets.to_i
           answer = n1 - n2
           puts "The subtraction of... #{n1} - #{n2} = #{answer}"
end
subtraction_function()


#Multiply
when 'multiply'
def multiplication_function
           puts "What number would you like to multiply?"
       	n1 = gets.to_i
       	puts "enter the other number"
           n2 = gets.to_i
           answer = n1 * n2
           puts "The multiplication of... #{n1} * #{n2} = #{answer}"
end
multiplication_function()


#Division
when 'divide'
   def division_function
           puts "What number would you like to divide?"
           n1 = gets.to_i
           puts "enter the other number"
           n2 = gets.to_i
           answer = n1 / n2
           puts "The division of... #{n1} / #{n2} = #{answer}"
   end
division_function()

#remainder
when 'remainder'
   def remainder_function
           puts "What number would you like to find the remainder?"
           n1 = gets.to_i
           puts "enter the other number"
           n2 = gets.to_i
           answer = n1 % n2
           puts "The remainder of... #{n1} % #{n2} = #{answer}"
   end
remainder_function()
 
 else
 	puts "you choose poorly"

end