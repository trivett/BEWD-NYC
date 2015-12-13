countries =[ {"names" => "sweden", "languages" => ["swedish"]}, 
	{"names" => "india", "languages" => ["hindi"]}, 
	{"names" => "japan", "languages" => ["japanese"]}]
countries.each do |country|
	puts "languagesspoken in #{ country["name"]}"
	country["languages"].each do |l|
		puts l.capitalize
	end
end
