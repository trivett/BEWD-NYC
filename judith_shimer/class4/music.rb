#bands exercise

'''bands = ["Buke and Gase","Micachu and the Shapes","Lupe Fiasco","Low","Sia"]

bands.each do |band|
	puts band.reverse
end'''

#beatles exercise

'''beatles = {
	"guitar" => "george",
	"bass" => "paul",
	"drums" => "ringo",
	"singer" => "john"
}

beatles.each do |k,v|
	puts "#{k.upcase}: #{v}"
end'''

#animals exercise

'''animals = {
	"moose" => "meese",
	"mouse" => "moose",
	"alligator" => "alligoose",
	"goose" => "gooses",
	"house" => "hice"
}

animals.each do |k,v|
	puts "#{k.upcase}: #{v}"
end'''

#countries exercise

countries = [
	{
		"name" => "sweden",
		"languages" => ["swedish","english","norwegian"]
	},
	{
		"name" => "japan",
		"languages" => ["japanese"]
	},
	{
		"name" => "india",
		"languages" => ["telugu","hindi","english","punjabi","french","etc."]
	},
	{
		"name" => "switzerland",
		"languages" => ["swiss","french","italian","english"]
	}
]

countries.each do |country|
	puts "Languages Spoken in #{country["name"].upcase}:"
	country["languages"].each do |language|
		puts "  #{language.capitalize}"
	end
end