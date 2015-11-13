# Let's make an array of hashes to represent news stories in Teddit.
<<<<<<< HEAD
story1 = {"headline" => "Obama Invites Pizza Rat to White House", 
	"category" => "Politics",
	"upvotes" => 90
}

story2 = {"headline" => "Dalai Lama Photographed",
	"category" => "Religion",
	"upvotes" => 66
}

story3 = {"headline" => "Billy Corgon Visits Banksy's 'Dismaland'",
	"category" => "Entertainment",
	"upvotes" => 2
=======
story1 = {
  "headline" => "Obama Invites Pizza Rat to White House",
  "category" => "Politics",
  "upvotes" => 90
}

story2 = { 
  "headline" => "Dalai Lama Photographed by Terry Richardson in New York",
  "category" => "Religion",
  "upvotes" => 66
}

story3 = {
  "headline" => "Billy Corgan Visits Banksy’s ‘Dismaland’, Has Bad Time",
  "category" => "Entertainment",
  "upvotes" => 2
>>>>>>> c67d743afc8eaca4a7b4c1269afe387dcb5ccdee
}

# #first, literally write three hashes of stories into a news array. Each story
# hash should have headline, category, and upvotes. If you want some
# inspiration, go for The Onion or something. 

# # prompt the user to enter a new story headline, then a category, and then
# number of upvotes.

user_story = {}

<<<<<<< HEAD
puts "Headline?"
user_story["headline"] = gets.chomp

puts "Category?"
user_story["category"] = gets.chomp

puts "Upvotes?"
user_story["upvotes"] = gets.chomp.to_i

# print user_story
# puts ''
=======
puts "headline please"
user_story["headline"] = gets.chomp

puts "category please"
user_story["category"] = gets.chomp

puts "upvotes please"
user_story["upvotes"] = gets.chomp.to_i

# puts user_story

def print_story(story)
  puts "Headline: #{ story["headline"] }"
  puts "Category: #{ story["category"]}"
  puts "Upvotes: #{ story["upvotes"]}"
  puts "============================="
end


>>>>>>> c67d743afc8eaca4a7b4c1269afe387dcb5ccdee

# make a method that accepts a story as a parameter.
# The method should print each story with the following format: 
# Headline: Obama Invites Pizza Rat to White House
# Category: Politics
# Upvotes: 90


<<<<<<< HEAD
def print_story(story)
	puts "Headline: #{ story["headline"] }"
	puts "Category: #{ story["category"] }"
	puts "Upvotes: #{ story["upvotes"] }"		
	puts "==================================="
end

print_story(user_story)
=======

todays_news = []

todays_news << story1
todays_news << story2
todays_news << story3
todays_news << user_story

todays_news.each do |story|
  print_story(story)
end


>>>>>>> c67d743afc8eaca4a7b4c1269afe387dcb5ccdee



#
# Call the method on the variable that saves the user-submitted story

# ================== step two ================
# Push the hash of the user-created story into the array you defined earlier. You
# can use either the .push method or that awesome shovel << method to do it.

# let's iterate over the array of hashes and pass each (hint hint) one into the
# method that prints them out all pretty.


<<<<<<< HEAD
todays_news = []
todays_news << story1
todays_news << story2
todays_news << story3
todays_news << user_story

todays_news.each do |story|
	print_story(story)
end

# 0.upto(3) do |num|
# 	print_story(todays_news[num])
# end
=======
>>>>>>> c67d743afc8eaca4a7b4c1269afe387dcb5ccdee



