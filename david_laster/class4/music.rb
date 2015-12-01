
bands = ['Smashing Pumpkins',"Rage Against The Machine","Radiohead","The Doors","The Beatles"]

bands.each do |complain|
	puts complain + " sucks"
end

animals = {"moose"=>"moose","sheep"=>"sheep","dog"=>"dogs","walrus"=>"walrii","mouse"=>"mice"}

animals.each do |k,v|
	puts k + " " + v
end

countries = [{"country" => "Sweden", "language" => ["English", "Swedish"]},
	{"country" => "Japan", "language" => ["Japanese"]},
	{"country" => "Switzerland", "language" => ["Swiss","English"]},
	{"country" => "India", "language" => ["English", "Hindi", "Bengali", "Telugu", "Marathi", "Tamil", "Urdu"]}
]

countries.each do |stuff|
	puts "Languages in #{stuff["country"]}"
	stuff["language"].each do |l|
	puts " " + l.capitalize
end
end
