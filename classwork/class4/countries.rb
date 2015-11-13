countries = [
  {"name" => "Japan", "languages" => ["Japanese"] },
  {"name" => "Sweden", "languages" => ["Swedish", "English"]},
  {"name" => "India", "languages" => ["Hindi", "English", "Gujarati", "Marathi", "Urdu", "Punjabi", "Bengali", "Tamil"]},
  {"name" => "Switzerland", "languages" => ["French", "German", "Italian"]}

]


countries.each do |country|
  puts "Languages spoken in #{ country["name"] }"
  country["languages"].each do |l|
    puts l.capitalize
  end
end