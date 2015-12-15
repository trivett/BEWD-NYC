Rails.application.routes.draw do

  get '/tshirts' => "tshirt#index"
  get '/tshirts/:id' => "tshirt#show"
  get '/workshirts' => "workshirt#index"

end