# I'm sure we have all noticed that on sites like Reddit and Twitter, anything involving a cat seems to get a lot of attention.
# This program will prompt the user for a headline, scan the headline for the word "cat" and the user will and automatically assign fake upvotes to the story if there is the mention of a cat.



# first, lets declare a method that will scan the story for the word cat or bacon. Let's name it calculate_upvotes
def calculate_upvotes(story)
	#does story include "cat"
	upvotes = 1 #setting upvotes to default at 1
	if story.downcase.include?("cat") && story.downcase.include?("bacon")
		upvotes *= 10
	elsif story.downcase.include?("cat") || story.downcase.include?("bacon")
		upvotes *= 5

	end
upvotes

end


# it's return value should be the number of upvotes, which should default to one
# let's check the ruby docs for a method that checks whether a substring (part of a string) is included in a string.


# now let's prompt the user to put in a news headline
puts "Please enter a headline."

# Save the user input as the variable story
story = gets.chomp

puts "New story added! Headline: #{story} #{calculate_upvotes(story)}"


# set a variable upvotes that will save the value of the output of calculate_upvotes



# print the story and it's appropriate upvotes.


# ---------------------------------

# what about if a headline has cat AND bacon? 

