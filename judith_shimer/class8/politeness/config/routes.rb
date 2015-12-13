Rails.application.routes.draw do

  root 'greet#hi'

  get '/greeting/:language' => 'greet#hi'

end