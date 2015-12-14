#array of hashes:


countries = [
  {"name"=>"sweden", "language" =>["swedish","english"]},
  {"name"=>"india", "language" =>["indian","hindi","bengali"]},
  {"name"=>"japan", "language" =>["japanies"]},
  {"name"=>"china", "language" =>["mandarin","cantonies"]}
]

countries.each do |country|
  puts "the language spoken in #{country["name"]}"
  #puts countries.class
  country["language"].each do |l|
    puts l.capitalize
  end
end
