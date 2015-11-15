bands = ["The Rolling Stones", "The Beatles", "Queen", "The Beach Boys", "The Who"]

bands.each do |x|
  puts x.upcase.reverse.reverse
end
