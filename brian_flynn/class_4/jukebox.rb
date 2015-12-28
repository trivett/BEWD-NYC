

# =====================

# require 'httparty'
# require 'json'

# puts "Enter artist or band name:"
# term = gets.chomp

# def search_itunes(term)
#   base = "https://itunes.apple.com/search?term="
#   url =  "#{base}" + "#{term}"
#   response = HTTParty.get"#{url}"
#   j = JSON.parse(response)
# end

require "httparty"
require "json"

 puts "Enter artist or band name:"
 term = gets.chomp

def search_itunes(term)
  base = "https://itunes.apple.com/search?term="
  url = base + term
  response = HTTParty.get(url)
  return json.parse(response)
end

def list_songs_by_band(term)
  response = search_itunes(term)
  results = response["results"]
  results.each do |song|
    puts song["trackName"]
  end

end

def play_random_song_from_band(term)
  response = search_itunes(term)
  results = response["results"]
  pick = results.sample
  system("open", pick["previewUrl"])
end




