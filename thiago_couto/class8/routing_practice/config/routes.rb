Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/products" => "products#index"
  get "/photos" => "photos#index"
  get "/friends" => "friends#index"
end
