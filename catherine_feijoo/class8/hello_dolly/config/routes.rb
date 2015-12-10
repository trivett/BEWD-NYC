Rails.application.routes.draw do
  get '/hello/:name' => 'hellos#index'
  get '/farewell/:name' => 'farewells#index'
end
