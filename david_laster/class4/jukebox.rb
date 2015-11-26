require 'httparty'
require 'json'
artist = puts
j = JSON.parse(HTTParty.get('https://itunes.apple.com/search?term='+artist+'&limit=5'))

j["results"].each do |song|
puts song["trackName"] + " " + song["previewUrl"]
end


j = JSON.parse(response)