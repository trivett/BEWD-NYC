Rails.application.routes.draw do
  root 'greet#hi'
  #get '/greeting/english' => 'greet#english'
  #get '/greeting/espanol' => 'greet#espanol'
  get '/greeting/:language' => 'greet#hi'
  #^ adding /:language means this is a symbol, you can navigate to http://localhost:3000/greeting/spanish instead of
  #http://localhost:3000/?language=spanish
  #/greeting + /:language will interpret :language as the key
end
