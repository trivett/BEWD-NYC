Rails.application.routes.draw do

  get '/books' => 'books#index'
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

end
