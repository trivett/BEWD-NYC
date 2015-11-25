eighties = [
  { "name" => "the smiths", "best_albums" => ["louder than bombs", "meat is murder"] },
  { "name" => "rick astley", "best_albums" => [ "whenever you need somebody", "hold me in your arms" ] },
  { "name" => "new order", "best_albums" => [ "brotherhood", "low life" ] }
]

eighties.each do |band|
    puts "Albums by #{band["name"].upcase}:"
    band["best_albums"].each do |album|
      puts album.capitalize
    end
end