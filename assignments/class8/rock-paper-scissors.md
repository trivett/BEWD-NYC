#Rock Paper Scissors

You can, and will, make a rails app that lets you play rock paper scissors with a robot.

##Step one: research
* We know that controllers determin which variables are available to their corresponding view. 
* But there is something else available as well called parameters. This is one way that 
* Refer to the parts of a url:

![Parts of a url](https://s3.amazonaws.com/images.mxpnl.com/blog/2014-10-17%2000:30:48.190268-jnurl1.png)

* After the question mark, you have the parts of what we call query parameters. This is useful for things like searches or indicating where a user came from. 
* If the example above was on a Rails application, the /page controller action will have access to an array called `params` which is set to `{:parameter1 => "value1", :parameter2 => "value2"}`

* You can also set params keys and values in the routes. 
* Read the [rails guides](http://guides.rubyonrails.org/action_controller_overview.html#parameters) on routing (section 4 up to 4.3, but skip part 4.2)


#Spec

* When I go to `localhost:300/game/rock` (or paper or scissors) to play. I should see what I threw (rock paper or scissors).
* I should also see what the robot threw, and who won the game.
* It would be nice to have some links for rock paper and scissors so the player can continue enjoying the game without throwing an invalid throw (such as "rokc")
* However, if the user manually writes an invalid throw such as "lizard" the robot will just win.



###Step one
* create a route for `/game/:move` and give it a controller, action method, and view.

###Step two
* Create an instance variable for the robot's move in the controller, have it print in the view.
* Do the same for the user's move.

###Step three
* Create a private method in the controller (remember this is a method that will not be allowed to handle an HTTP request, but one that we use as a helper.) This method should compare the robot and player throws and return who won.
* Print this to the screen as well.

####Step four
* Add links below the result of the game so the user can click to play.

####Bonuses
* Create a root route with a view that welcomes the user and provides choices for an initial throw that starts the endless game.
* Edit the application layout so we have a persistent header 

Put this Rails app in your class folder and make a pull request!


