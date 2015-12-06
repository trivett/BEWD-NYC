Rails.application.routes.draw do # open with controll+t, then look for routes.rb

       root 'greetings#hi' # there can be only one root and it sends us to a preselected page that we want.
        get '/greetings/hi/:language' => 'greetings#hi'



      # get '/greeting/english' => 'greetings#english'

      # get '/greeting/espanol' => 'greetings#espanol'

end
