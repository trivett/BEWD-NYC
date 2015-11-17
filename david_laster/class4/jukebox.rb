require 'httparty'
require 'json'
artist = "santell"
j = HTTParty.get('https://itunes.apple.com/search?term='+artist+'&limit=5')
j["results"].each do |song|
puts song["trackName"] + " " + song["previewUrl"]
end

