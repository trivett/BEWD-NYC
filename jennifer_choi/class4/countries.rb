countries = [
	{"name" => "Sweden", "languages" => ["English", "Swedish"]},
	{"name" => "Japan", "languages" => ["Japanese"]},
	{"name" => "Switzerland", "languages" => ["French", "German"]},
	{"name" => "India", "languages" => ["Tamil", "Hindi", "Gujarati"]}
]

countries.each do |country|
	puts "Languages spoken in #{country["name"]}:"
	country["languages"].each do |language|
		puts "- #{language}"
	end
end