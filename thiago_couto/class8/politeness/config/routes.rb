Rails.application.routes.draw do
  root 'greet#hi' 
  get '/greeting' => 'greet#hi'
end