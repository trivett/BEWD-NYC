# Let's make an array of hashes to represent news stories in Teddit.

story1 = {
	"headline" => "Obama Invites Pizza Rat to White House",
	"category" => "Politics",
	"upvotes" => 90
}

story2 = {
	"headline" => "Cat eats dog in Brooklyn",
	"category" => "NYC",
	"upvotes" => 10
}

story3 = {
	"headline" => "Madonna pledges to stop making music videos",
	"category" => "Arts",
	"upvotes" => 55,
}


# #first, literally write three hashes of stories into a news array. Each story
# hash should have headline, category, and upvotes. If you want some
# inspiration, go for The Onion or something. 


#create a hash that saves each of these values

# # prompt the user to enter a new story headline, then a category, and then
# number of upvotes.

user_story = {}

puts "Create a headline"
user_story["headline"] = gets.chomp

puts "Select a category"
user_story["category"] = gets.chomp

puts "How many upvotes?"
user_story["upvotes"] = gets.chomp.to_i

puts user_story

def print_story(story)

puts "Headline: #{story["headline"]}"
puts "Category: #{story["category"]}"
puts "Upvotes: #{story["upvotes"]}"
puts "================================"

end

print_story(user_story)

# make a method that accepts a story as a parameter.
# The method should print each story with the following format: 
# Headline: Obama Invites Pizza Rat to White House
# Category: Politics
# Upvotes: 90

# print_story(news_story)





#
# Call the method on the variable that saves the user-submitted story

# ================== step two ================
# Push the hash of the user-created story into the array you defined earlier. You
# can use either the .push method or that awesome shovel << method to do it.

# let's iterate over the array of hashes and pass each (hint hint) one into the
# method that prints them out all pretty.



todays_news = []

todays_news << story1
todays_news << story2
todays_news << story3
todays_news << user_story

puts todays_news



todays_news.each do |story| #prints out the story each time so you don't have to write it out multiple times.
	print_story(story)
end











