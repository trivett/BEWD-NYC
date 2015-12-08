Rails.application.routes.draw do
 
 root 'moves#index'
 
  get '/game/' => 'moves#index'
  # get '/game/:move' => 'moves#random'


  get '/game/:move' => 'moves#turn'

  

end
