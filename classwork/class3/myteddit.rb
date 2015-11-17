# I'm sure we have all noticed that on sites like Reddit and Twitter, anything involving a cat seems to get a lot of attention.
# This program will prompt the user for a headline, scan the headline for the word "cat" and the user will and automatically assign fake upvotes to the story if there is the mention of a cat.


# first, lets declare a method that will scan the story for the word cat or bacon. Let's name it calculate_upvotes
# it's return value should be the number of upvotes, which should default to one
# let's check the ruby docs for a method that checks whether a substring (part of a string) is included in a string.

def calculate_upvotes(story)
  upvotes = 1
  if story.downcase.include?('cat') && story.downcase.include?('bacon')
    upvotes *= 10
  elsif story.downcase.include?('cat') || story.downcase.include?('bacon')
    upvotes *= 5
  end
  upvotes
end


# now let's prompt the user to put in a news headline
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"

# Save the user input as the variable story
story = gets.chomp
# set a variable upvotes that will save the value of the output of 
upvotes = calculate_upvotes(story)

puts "New story added! #{story}, Current Upvotes: #{upvotes}"


