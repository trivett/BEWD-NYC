def print_story(story)
  puts "Headline: #{ story[:story] }"
  puts "Category: #{ story[:category] }"
  puts "Upvotes: #{ story[:upvotes] }"
end

def print_all_news_by_upvotes(news)
	news.each do |story|
	  print_story(story)
	  puts "==========="
	end
end

news = [
  {story: "Obama invites Pizza Rat to White House", category: "Politics", upvotes: 90 },
  {story: "Trump buys Syrian Refugees Lavish Homes in Mexico", category: "Politics", upvotes: 2}
]

addStory = 'Y'

while addStory == 'Y'

	puts "enter a story headline"
	headline = gets.chomp

	puts "enter the category"
	category = gets.chomp

	puts "enter the number of upvotes"
	num_upvotes = gets.chomp.to_i

	news_story = {story: headline, category: category, upvotes: num_upvotes}
	news << news_story

	news.sort_by! { |hsh| hsh[:upvotes] }
	news.reverse!

	print_all_news_by_upvotes(news)

	puts 'Do you want to add another story? (y/n)'
	addStory = gets.chomp.upcase

end







