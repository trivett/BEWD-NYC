countries_and_languages = [
 { "country" => "India", "languages" => ["hindi", "konkani", "tamil", "gujurati", "punjabi", "urdu", "english"]},
 { "country" => "Sweden", "languages" => ["swedish", "finnish"]},
 { "country" => "Japan", "languages" => ["japanese", "english"]},
 { "country" => "Switzerland", "languages" => ["german", "french"]}
 ]

countries_and_languages.each do |global|
	puts "  
Languages spoken in #{global["country"].upcase}:"
	global["languages"].each do |language|
		puts language.capitalize
	end
end