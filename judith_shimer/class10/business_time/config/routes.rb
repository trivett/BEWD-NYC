Rails.application.routes.draw do
  resources :companies
  get '/companies/rankings' => 'companies#rankings'
  get '/companies/cities/:city' => 'companies#cities'
end