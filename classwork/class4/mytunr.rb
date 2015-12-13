# https://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html

require 'httparty'
require 'json'

def search_itunes(term)
  base = "https://itunes.apple.com/search?term="
  url =  base + term
  response = JSON.parse(HTTParty.get url)
  return response
end

def list_songs_by_band(term)
  response = search_itunes(term)
  results = response["results"]

  results.each do |song|
    puts "#{ song["trackName"] } by #{ song["artistName"] } on #{song["collectionName"]}"
  end
end

def play_random_song_from_band(term)
  response = search_itunes(term)
  results = response["results"]
  pick = results.sample
  system("open", pick["previewUrl"]) 
end



def lets_go
  play = 'Y'
  while play == 'Y'
    puts "What type of search will you do? (P = 'play random song by band', T = 'show band's tracks)"
    type_of_search = gets.chomp.downcase

    if type_of_search == 'p'
      puts "enter your favorite band"
      term = gets.chomp.gsub(' ', '+')
      play_random_song_from_band(term)
    elsif type_of_search == 't'
      puts "enter your favorite band"
      term = gets.chomp.gsub(' ', '+')
      list_songs_by_band(term)
    end

    puts "Continue? (y/n)"
    play = gets.chomp.upcase
  end
end

lets_go

