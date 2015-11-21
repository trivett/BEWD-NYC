animals = {"moose" => "moose", "sheep" => "sheep", "dog" => "dogs", "walrus" => "walruses",
"mouse" => "mice"}

animals.each do |k, v|
	puts "Singular: #{k}\nPlural: #{v}"
end