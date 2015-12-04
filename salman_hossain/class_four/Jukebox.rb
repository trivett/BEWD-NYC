require 'httparty'
require 'json'

def search_itunes(term)
  base = "https://itunes.apple.com/search?term="
  url =  base + term
  gems = HTTParty.get(url)

  JSON.parse(gems)
end

def list_songs_by_band(term)
   response = search_itunes(term)
   results = response["results"]

  #loop over results here and print out each song title

    results.each do |track|
    puts track["trackName"]
  end
end

def play_random_song_from_band(term)
    response = search_itunes(term)
    results = response["results"]
    pick = results[rand(results.length-1)]# Fill in this blank with the code that will grab a random member of the results array. Look at the Ruby Docs to find it.
    system("open", pick["previewUrl"]) 
end


## this method will run the whole application: 
def lets_go
  puts "Welcome to Tunr!"
  play = 'Y'
  upvotes ={}
  while play == 'Y'
    puts "What type of search will you do? (P = 'play random song by band', T = 'show band's tracks)"
    type_of_search = gets.chomp.downcase

    if type_of_search == ""
      puts "We did not recived any digit from you, please enter your search"
      exit
    elsif type_of_search == 'p'
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

    upvotes[term] ||= 0
    if type_of_search.include?(term) and type_of_search.include?(term)
     upvotes[term] += 10
    else type_of_search.include?(term) || type_of_search.include?(term)
     upvotes[term] += 5
    end

    puts "New music searched! #{term}, Current Upvotes: #{upvotes[term]}"

    
  end
end

#calls the method, makes the fun happen
lets_go



