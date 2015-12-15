Rails.application.routes.draw do
  resources :companies
  get '/companies/ranking' => 'companies#ranking'
  get '/companies/cities/:city' => 'companies#cities'
end