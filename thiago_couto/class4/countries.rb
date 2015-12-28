a = [
	{"name" => "Sweden", "languages" => ["Swedish", "English"] },
	{"name" => "Japan", "languages" => ["Japanese"] },
	{"name" => "Switzerland", "languages" => ["Switzerlandish", "English"] },
	{"name" => "Indian", "languages" => ["Hindi", "English", "Bodo", "Kannada", "Odia", "And more ..."]}
]

a.each do |b|
	puts "Languages spoken in #{b['name']}"
	b["languages"].each do |spoken|
		puts spoken
	end
end
