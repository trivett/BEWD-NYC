require "httparty"
require "json" 

response = HTTParty.get("https://itunes.apple.com/search?term=greenday")

j = JSON.parse(response)

puts j
