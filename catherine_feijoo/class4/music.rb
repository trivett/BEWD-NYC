
require 'httparty'
require 'json'

# What is the method that returns a random element from an array? 
# # .sample
# What does .gsub(" ", "+") do on a string? Why is that part of the code of tunr.rb? 
# # substitutes spaces with a plus sign. users type in a band name with a space in it but we need a plus sign for a valid URL
# In your words, explain how the loop in tunr.rb works to let the user continually keep playing new songs or requesting new song lists.
# # variable play is initialized as y. the while loop will not continue if user enters any value other than y


def search_itunes(term) 
  JSON.parse(HTTParty.get("https://itunes.apple.com/search?term=#{term}&limit=5"))
end

def list_songs_by_band(term) 
  response = search_itunes(term)
  response["results"].each do |song|
    puts song["trackName"]
  end
end

def play_random_song_from_band(term)
  response = search_itunes(term)
  #puts (response["results"].sample)["previewUrl"]
  system("open", (response["results"].sample)["previewUrl"])
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





