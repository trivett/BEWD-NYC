countries = [
	{"name" => "Japan", "languages" => ["Japanese"]	},
	{"name" => "USA", "languages" => ["English", "Spanish", "French"] }

]


countries.each do |country|
	puts "Languages spoken in each #{country["name"]}"
	country["languages"].each do |lang|
		puts lang
	end 
end

