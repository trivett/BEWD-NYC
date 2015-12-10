Rails.application.routes.draw do
  get '/books' => 'books#index'
end
