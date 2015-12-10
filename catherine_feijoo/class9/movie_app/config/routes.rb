Rails.application.routes.draw do
  root 'movies#index'
  get '/movies' => 'movies#index'
  get '/index' => 'movies#index'
  get '/index/:name' => 'movies#show'
end
