##############
## step one###
##############

# Give the program access to the necessary gems
# we know we will need to make HTTP requests to the itunes api, so we will need HTTParty
# we know we will need to parse json from the response, so we will need json
require 'httparty'
require 'json'

###############
## step two ###
###############

# Fill in the blanks to make this method return songs by the artist specified in term as a hash.
# remember you will need HTTParty and JSON.parse

# first try and just construct the url with your method and copy it and paste it into the browser to make sure that it works.
# then use HTTParty to GET the json, and save it to a variable
# Then use the JSON gem to parse the json into a hash. that will be the return value of this method.


def search_itunes(term)
    base = "https://itunes.apple.com/search?term="
    url =  base + term
    response = HTTParty.get(url)
    return JSON.parse(response)
end



#################
### step three ##
#################

# fill in the blanks for  list_songs_by_band that loops over the results of your request by calling search_itunes. this method then prints out all of the track names for the query along with

def list_songs_by_band(term)
    response = search_itunes(term)
    results = response["results"]

    results.each do |track|
        puts track["trackName"]
    end

end



# Fill in the blanks for another method called play_random_song_from_band that takes a parameter (term)
# This method will call search_itunes and pass its own parameter into that method.
# instead of printing all of the songs, this method will pick one at random (I want you to look at the docs to find how to grab a random element from an array)
# the way to take that song and play it is to find the previewUrl attribute of the song.
#instead of making the user copy the url and paste it him/herself there is a way to do this with ruby
# Since it is a little obscure, here it is:
# system("open", <url here as a string>)



def play_random_song_from_band(term)
    response = search_itunes(term)
    results = response["results"]
    pick = results.sample

    system("open", pick["previewUrl"])
end


## this method will run the whole application:
def lets_go
    puts "Welcome to Tunr!"
    play = 'Y'
    while play == 'Y'
        puts "What type of search will you do? (P = 'play random song by band', T = 'show band's tracks)"
        type_of_search = gets.chomp.downcase

        if type_of_search == 'p'
            puts "enter your favorite band"
            term = gets.chomp.gsub(' ', '+') # gsub? What's that? Why?
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
