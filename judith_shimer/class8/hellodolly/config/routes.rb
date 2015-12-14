Rails.application.routes.draw do
  get '/hellodolly' => 'dolly#index'
  get '/hellojude' => 'jude#index'
end