# Let's make an array of hashes to represent news stories in Teddit.

# #first, literally write three hashes of stories into a news array. Each story
# hash should have headline, category, and upvotes. If you want some
# inspiration, go for The Onion or something.
story1 = {
	"headline" => "Obama Invites Pizza Rat to White House",
	"category" => "Politics",
	"upvotes" => 90
}

story2= {
	"headline" => "Man eaten by monster Pizza in Subway",
	"category" => "Local",
	"upvotes" => 1290
}

story3= {
	"headline" => "Pizza prices skyrocketing",
	"category" => "Economics",
	"upvotes" => 320
}

# create a hash that saves each of these values
headlines = story1, story2, story3

# # prompt the user to enter a new story headline, then a category, and then
# number of upvotes.
user_story = {}
puts "Any pizza headlines?"
user_story["headline"] = gets.chomp
puts "What category does this headline belong to?"
user_story["category"] = gets.chomp
puts "How many upvotes?"
user_story["upvotes"] = gets.chomp.to_i

# make a method that accepts a story as a parameter.
# The method should print each story with the following format: 
# Headline: Obama Invites Pizza Rat to White House
# Category: Politics
# Upvotes: 90
def print_story(story)
	puts "----------"
	puts "Headline: #{story['headline']}"
	puts "Category: #{story['category']}"
	puts "Upvotes: #{story['upvotes']}"
end

# Call the method on the variable that saves the user-submitted story
# print_story(user_story)

# ================== step two ================
# Push the hash of the user-created story into the array you defined earlier. You
# can use either the .push method or that awesome shovel << method to do it.
headlines << user_story

# let's iterate over the array of hashes and pass each (hint hint) one into the
# method that prints them out all pretty.
headlines.each do |story|
	print_story(story)
end