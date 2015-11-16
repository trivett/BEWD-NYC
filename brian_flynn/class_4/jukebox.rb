# require 'httparty'
# require 'json'


# response = HTTparty.get "<<any url here>>"

# # ex: response = HTTParty.get("https://itunes.apple.com/search?term=ke$ha")

# # This returns an HTTparty response.
# # to turn it into a Hash, which we are familiar with, we need to parse it:

# j = JSON.parse(response)

# j.class
# #should be a Hash!

 # response = HTTparty.get("#{url}")
  # j = JSON.parse(response)

# =====================

require 'httparty'
require 'json'

puts "Enter artist or band name:"
term = gets.chomp

def search_itunes(term)
  base = "https://itunes.apple.com/search?term="
  url =  "#{base}" + "#{term}"
  response = HTTParty.get"#{url}"
  j = JSON.parse(response)
  puts j.class
end

puts search_itunes(term)

def list_songs_by_band(term)
  response = search_itunes(term)
  results = response["results"]
  puts results.class
end

puts list_songs_by_band(term)


