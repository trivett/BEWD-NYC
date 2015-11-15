countries = [
  {"country" => "Sweden", "languages" => ["Swedish", "Finnish", "English"]},
  {"country" => "Japan", "languages" => ["Japanese", "Korean"]},
  {"country" => "Switzerland", "languages" => ["French", "German", "English"]},
  {"country" => "India", "languages" => ["Hindi", "Gujarati", "Tamil", "English"]}
]

countries.each do |x|
  puts "Languages spoken in #{x["country"].upcase}:"
  x["languages"].each do |y|
    puts y.capitalize
  end
end

