all_stories = []

## prompts user to enter a new story, and pushes it into the hash
def submit_new(all_stories)
	new_story = {}
	puts "Headline, please"
	new_story["headline"] = gets.chomp
	puts "Category, please"
	new_story["category"] = gets.chomp
	puts "Upvotes, please"
	new_story["upvotes"] = gets.chomp.to_i
	all_stories << new_story
end

## prints a story
def print_story(story)
	puts "Headline: #{ story["headline"] }"
	puts "Category: #{ story["category"] }"
	puts "Upvotes: #{ story["upvotes"] }"
	puts "=================="
end

## sorts stories from most to least upvotes and prints them
def print_all(all_stories)
	puts "=================="
	all_stories.sort_by! { |ups| -ups["upvotes"]}
	all_stories.each do |story|
		print_story(story)
	end
end

## runs the whole program
def run_program(all_stories)
	continue = "Y"
	while continue == "Y"
		submit_new(all_stories)
		print_all(all_stories)
		puts "Add another story? (y/n)"
		continue = gets.chomp.upcase
	end
end

run_program(all_stories)