require 'active_support/inflector'

animals = {"moose" => "mooses", "sheep" => "sheep", "dog" => "dogs", "walrus" => "walrus", "mouse" => "mice"}

animals.each do |k, v|
	puts "Two or more of #{k} is called #{k.pluralize}"
end