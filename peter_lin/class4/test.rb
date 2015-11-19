require 'httparty'
require 'json'

def search_itunes(query)
  url = "https://itunes.apple.com/search?term=" + query
  response = HTTParty.get(url)
  j = JSON.parse(response)
  puts j
end

# search_itunes('ke$ha')

