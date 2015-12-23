Rails.application.routes.draw do

  # get '/movieapp' => 'movieapp#index' this works too. but resource works better.
    root 'movies#index'
    resources :movies

end
