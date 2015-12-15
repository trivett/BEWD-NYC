require 'httpparty'
require 'json'

def search_itunes(term) #anyterm will work
	base = "http://itune.apple.com/search?term="
	url = base + term
	response = HTTParty.gets (url)
	return JSON.parse(reponse)
end






def play_random_song_from_band(term)
	reponse = search_itunes(term)
	result = reponse["result"]
	pick = result.sample 
