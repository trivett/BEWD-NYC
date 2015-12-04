require 'httparty'
require 'json'

## plops user band input into iTunes search URL, grabs results, parses to Ruby
def search_itunes(term)
  base = "https://itunes.apple.com/search?term="
  url =  base + term
  response = HTTParty.get(url)
  j = JSON.parse(response)
end

## cycles through songs in results array & prints the track name
def list_songs_by_band(term)
  response = search_itunes(term)
  results = response["results"]
  results.each do |song|
    puts song["trackName"]
  end
end

## picks a random result & opens the URL in default browser
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

__END__
HOMEWORK QUESTIONS:

* What is the method that returns a random element from an array?
  .sample

* What does .gsub(" ", "+") do on a string? Why is that part of the code of tunr.rb?
  .gsub finds the first thing (in this case, all spaces) and replaces them with the second (a plus) which is necessary here because we're sticking the value of term into a URL.

* In your words, explain how the loop in tunr.rb works to let the user continually keep playing new songs or requesting new song lists.
  lets_go asks the user to input Y or N, which is stored in the play variable.  Play = y by default to get the user started.
As long as play remains y, the user gets the option of playing a song, or listing tracks--each of which choice asks the user for a band, then calls a different method.
Both methods call the search_itunes method, which plops the user's band input into an iTunes search URL, uses HTTParty to fetch the JSON query results, then JSON to parse it into a Ruby hash.
The play_random_song_from_band method picks a random result ("results" is an array in the hash that contains MORE hashes for each song), and uses the system method to open the previewURL from that song's hash in the user's default browser.
The list_songs_by_band method cycles through the array of results and prints just the track name from each song's hash.
Once the user's chosen method has done its thing, the while loop in lets_go checks if the user wants to continue, by giving them the option of changing the play variable.  If it's still y, the while loop continues; otherwise (if the user puts n, though they could put anything really) the loop is broken and the program ends.