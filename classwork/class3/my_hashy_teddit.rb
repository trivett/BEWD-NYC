# Let's make an array of hashes to represent news stories in Teddit.
news = [
  {story: "Obama invites Pizza Rat to White House", category: "Politics", upvotes: 90 },
  {story: "Trump buys Syrian Refugees Lavish Homes in Mexico", category: "Politics", upvotes: 2}
]



# #first, literally write three hashes of stories into a news array. Each story
# hash should have headline, category, and upvotes. If you want some
# inspiration, go for The Onion or something. 

puts "enter a story headline"
headline = gets.chomp

puts "enter the category"
category = gets.chomp

puts "enter the number of upvotes"
num_upvotes = gets.chomp.to_i


#create a hash that saves each of these values

news_story = {story: headline, category: category, upvotes: num_upvotes}


puts news_story
# # prompt the user to enter a new story headline, then a category, and then
# number of upvotes.


# make a method that accepts a story as a parameter.
# The method should print each story with the following format: 
# Headline: Obama Invites Pizza Rat to White House
# Category: Politics
# Upvotes: 90
def print_story(story)
  puts "Headline: #{ story[:story] }"
  puts "Category: #{ story[:category] }"
  puts "Upvotes: #{ story[:upvotes] }"

end

# print_story(news_story)



#
# Call the method on the variable that saves the user-submitted story

news << news_story
# ================== step two ================
puts news
# Push the hash of the user-created story into the array you defined earlier. You
# can use either the .push method or that awesome shovel << method to do it.
news.each do |story|
  print_story(story)
  puts "==========="
end

# let's iterate over the array of hashes and pass each (hint hint) one into the
# method that prints them out all pretty.

