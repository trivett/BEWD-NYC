# bands = ["young thug", "julia holter", "fetty wap", "future", "drake"]

# bands.each do |x|
# 	puts x.upcase

# end

# animals = {"moose" => "moose", 
# 	 "sheep" => "sheeps",
# 	 "dog" => "dogs",
# 	 "walrus" => "walruses", 
# 	 "mouse" => "mice"}

# animals.each do |k, v|
# 	puts " #{ k.upcase }: #{ v.capitalize }"
# end

 countries = [
 	{"name" => "Sweden", "languages" => ["English", "Swedish"]},
 	{"name" => "Japan", "languages" => ["Japanese"]},
 	{"name" => "Switzerland", "languages" => ["German", "Italian", "English", "Rumantsch"]},
 	{"name" => "India", "languages" => ["Punjabi", "Bengali", "Tamil"]}
]

countries.each do |country|
	puts "Languages spoken in #{country["name"]}:"
	country["languages"].each do |l| 
		puts l.capitalize
	end

end