def teddit
	story1 = {
		"headline" => "Obama invites Pizza to White House",
		"category" => "Politics",
		"upvotes" => 90
	}

	story2 = {
		"headline" => "Man eaten by Pizza in Subway",
		"category" => "Local",
		"upvotes" => 1290
	}

	story3 = {
		"headline" => "Pizza prices skyrocketing",
		"category" => "Economics",
		"upvotes" => 320
	}

	headlines = story1, story2, story3
	
	puts "Welcome to Teddit!"
	feed = 'y'
	while feed == 'y'
		user_story = {}
		puts "Any pizza headlines?"
		user_story["headline"] = gets.chomp
		puts "What category does this headline belong to?"
		user_story["category"] = gets.chomp
		puts "How many upvotes?"
		user_story["upvotes"] = gets.chomp.to_i

		def print_story(story)
			puts "----------"
			puts "Headline: #{story['headline']}"
			puts "Category: #{story['category']}"
			puts "Upvotes: #{story['upvotes']}"
		end

		headlines << user_story

		headlines.each do |story|
			print_story(story)
		end

		puts "Continue? (y/n)"
		feed = gets.chomp
	end
end

teddit