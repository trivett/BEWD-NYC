story1 = {
	"headline" => "Hilary Has Threesome with Miley and Tyga",
	"category" => "Politics",
	"upvotes" => 90
}

story2 = {
    "headline" => "Trevor and Nikhita Get Promoted and Run Kitchensurfing",
    "category" => "Things that Need to Happen",
    "upvotes" => 999
}

story3 = {
   "headline" => "Trevor is the new Magic Mike",
   "category" => "Is your body ready",
   "upvotes" => 2000
}

user_story = {}

puts "headline please"
user_story["headline"] = gets.chomp

puts "category please"
user_story["category"] = gets.chomp

puts "upvotes please"
user_story["upvotes"] = gets.chomp.to_i

def print_story(story)
	puts "Headline:  #{story ["headline"]}"
	puts "Category:  #{story ["category"]}"
	puts "Upvotes:  #{story ["upvotes"]}"
	puts "==================================="
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