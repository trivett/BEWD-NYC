def list_songs_by_artist(x)
   require 'httparty'
   r = HTTParty.get "https://itunes.apple.com/search?term=#{ x }"
   j = JSON.parse(r)
   j["results"].each do |song|
   puts song["trackName"]
   end
end

def play_random_song_from_artist(x)
	require 'httparty'
    r = HTTParty.get "https://itunes.apple.com/search?term=#{ x }"
    j = JSON.parse(r)
    system("open",j["results"].sample["previewUrl"])
end

def lets_go
  puts "Welcome to Tunr!"
  play = 'Y'
  while play == 'Y'
    puts "What type of search will you do? (P = 'play random song by artist', T = 'show artist's tracks)"
    type_of_search = gets.chomp.downcase

    if type_of_search == 'p'
      puts "enter your favorite artist"
      favorite_artist = gets.chomp.gsub(' ', '+')
      play_random_song_from_artist(favorite_artist)
    elsif type_of_search == 't'
      puts "enter your favorite artist"
      term = gets.chomp.gsub(' ', '+')
      list_songs_by_artist(term)
    end

    puts "Continue? (y/n)"
    play = gets.chomp.upcase
  end
end

lets_go