##############
## step one###
##############
#together
# we know we will need to make HTTP requests to the itunes api, so we will need HTTParty

# we know we will need to parse json from the response, so we will need json

# make these two libraries available to the program

require 'httparty'
require 'json'

###############
## step two ###
###############
#together
# create a method called search_itunes that takes a parameter, which will be our search term

# This method should construct a url with the search parameter.

# consult at the docs on https://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html as well as the Ruby docs

# first try and just construct the url with your method and copy it and paste it into the browser to make sure that it works.
# then use HTTParty to GET the json, and save it to a variable
# Then use the JSON gem to parse the json into a hash. that will be the return value of this method.

def search_itunes(term)
  url = "https://itunes.apple.com/search?term=" + term
  response = HTTParty.get(url)
  j = JSON.parse(response)
  return j
end


#################
### step three ##
#################
#in groups of four
# create a method called list_songs_by_band that loops over the results of your request by calling search_itunes. this method then prints out all of the track names for the query along with 

def list_songs_by_band(term)
  hash = search_itunes(term)
  hash['results'].each do |result|
    puts result['trackName']
  end
end



# make another method called play_random_song_from_band that takes a parameter (term)
# This method will call search_itunes and pass its own parameter into that method.
# instead of printing all of the songs, this method will pick one at random (I want you to look at the docs to find how to grab a random element from an array)
# the way to take that song and play it is to find the previewUrl attribute of the song. 
#instead of making the user copy the url and paste it him/herself there is a way to do this with ruby
# Since it is a little obscure, here it is:
# system("open", <url here as a string>) 

def play_random_song_from_band(term)
  hash = search_itunes(term)
  song = hash['results'].sample()
  system("open", song['previewUrl'])
end




#############
## freebie ##
#############

## this method will run the whole application: 
def lets_go
  puts "Welcome to Tunr!"
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

#calls the method, makes the fun happen
lets_go





