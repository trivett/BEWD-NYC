Rails.application.routes.draw do
    

    root 'greets#hi'

    get  '/greeting/:language' => 'greets#hi'
    # get '/greeting/spanish' => 'greets#spanish'



end


#:language will be interpreted as params language
