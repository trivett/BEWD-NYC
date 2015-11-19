require 'httparty'
require 'json'

def search_itunes(term)
  JSON.parse(HTTParty.get(URI.parse(URI.encode("https://itunes.apple.com/search?term=#{term}"))))
end

def list_songs_by_band(band)
  responce = search_itunes(band)
  responce["results"].each do |t|
    puts t["trackName"]
  end
end

def play_random_song_from_band(term)
  band = search_itunes(term)
  song = band["results"].sample
  puts song["previewUrl"] 
end

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

lets_go

# What is the method that returns a random element from an array?
# .sample

# What does .gsub(" ", "+") do on a string? Why is that part of the code of tunr.rb?
# .gsub is a method that returns a copy of a string with substitutions made described by given arguments.  In order to call the correct URL, spaces had to be substituted with pluses.