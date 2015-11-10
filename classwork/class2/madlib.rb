puts "Welcome to the Mad Lib Generator"

# Prompt the user to enter different words
puts "enter a noun"
noun = gets.chomp.downcase
puts "enter a verb"
verb = gets.chomp.downcase
puts "enter an adjective"
adj = gets.chomp.downcase

puts "enter a number"
num = gets.chomp.downcase
puts "enter a noun"
noun2 = gets.chomp.downcase
puts "enter a name"
name = gets.chomp.downcase


# Substitute the blank spaces in the template with the words
template = "Last week I got hit by a #{noun} while I was trying to #{verb}. It felt #{adj}. It took #{num} days to recover. My brother brought me a #{noun2} while I was at the hospital. As it happened, I gave birth to a child named #{name.capitalize}."

# Print out the results to the user
puts template
