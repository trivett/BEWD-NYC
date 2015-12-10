Rails.application.routes.draw do
  get '/tshirts' => 'tshirts#index'
  get '/tshirts/:id' => 'tshirts#show'
  #If someone goes to localhost:3000/tshirts/1 then params[:id] is 1 params = {:id => 1}

  get '/workshirts' => 'workshirts#index'
  get '/workshirts/:id' => 'workshirts#show'
end