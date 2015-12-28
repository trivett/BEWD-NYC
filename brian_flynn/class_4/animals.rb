animals = {"moose" => "moose", "sheep" => "sheep", "dog" => "dogs", "walrus" => "walruses", "mouse" => "mice"}

animals.each do |k,v|
  puts " #{k.upcase}: #{v.capitalize}"
end
