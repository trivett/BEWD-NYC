# Let's make an array of hashes to represent news stories in Teddit.
story1 = {
    "headline"  => "Obama Invites Pizza Rat to White House",
    "category"  => "Politics",
    "upvotes"   => 90
}

story2 = {
    "headline"  => "Christie Targets Hillary Clinton as Candidates Spar in Debate",
    "category"  => "Politics",
    "upvotes"   => 78
}

story3 = {
    "headline"  => "Defeating My Anxiety",
    "category"  => "Op-Ed",
    "upvotes"   => 10392
}


user_story = {}

puts "headline please: "
user_story["headline"] = gets.chomp

puts "no. category: "
user_story["category"] = gets.chomp

puts "no. upvotes: "
user_story["upvotes"] = gets.chomp

def print_story(story)
    puts "Headline: #{ story["headline"] }"
    puts "Category: #{ story["category"] }"
    puts "Upvotes: #{ story["upvotes"] }"
    puts "===================================="
end

print_story(user_story)


todays_news = []

todays_news << story1
todays_news << story2
todays_news << story3
todays_news << user_story

todays_news.each do |story|
    print_story(story)
end




# #first, literally write three hashes of stories into a news array. Each story
# hash should have headline, category, and upvotes. If you want some
# inspiration, go for The Onion or something.


#create a hash that saves each of these values

# # prompt the user to enter a new story headline, then a category, and then
# number of upvotes.


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
