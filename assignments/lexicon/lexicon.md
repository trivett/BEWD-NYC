#Class 1 Homework

On your own, create a directory called 'lexicon' in your computer somewhere like Documents or desktop. Wherever you like is fine.

In your new folder, create a file called class_1_command_line_git.md

Open it by typing `subl class_1_command_line_git.md` in the terminal

Paste in the following lines with all of the new terms and commands that you learned today and define them in your own words. Commit your definitions and push it up to a new git repo on Github. If there are any other terms that you took down in your notes, feel free to add them. Note that this is written in Markdown, which is good to know since Github uses it for readme files. 

#Unix/Linux/MacOSX Commands
* `~` : This symbol means "home" on the UNIX command line.
* `/` : This symbol means "root", the ultimate parent directory.
* `whoami` : This makes the terminal output the current user name.
* `pwd` : 
* `cd` : 
* `ls` :  
* `cd ..` : 
* `mkdir` :
* `touch` :
* `cat` :
* `.` :
* `rm` :
* `rm -rf` :
* `man` :

# Basic Git commands
* `git init` :
* `git add .` :
* `git add hello.txt` :
* `git status` :
* `git commit -m 'created hello.txt` :
* `git push origin master` :


# Class 2 -- Strings and Numbers

* Ruby
* MINASWAN: 
* truthy and falsey values: 
* IRB: 
* variable:
* method:
* `def`: 
* parameters
* `=`:
* `gets.chomp`:
* `puts`:
* String:
* Fixnum:
* Float:
* String interpolation ( `#{ something in ruby }` ):
* `.to_i`:
* `.to_s`:
* `+` with strings:
* `+` with numbers:
* `-`:
* `*`:
* `/`:
* `%`:
* `==`:
* `.class`:
* `.reverse`:
* `.reverse!`:
* `.upcase`:
* `.downcase`:
* `.upcase!`:
* `.downcase!`:
* `<`:
* `>`:
* `>=`:
* `<=`:
* `if`:
* `elif`:
* `else`:
  

#Class 3 -- Loops and Collections

* Comparison operators:
  * `==`:
  * `!=`:
  * `<=`:
  * `>=`:
  * `>`:
  * `<`:
* Logical operators:
  * `&&`:
  * `||`:  
  * `!`:
* Loops:
* `.times`:
* `while`:
* `until`:
* `upto`:
* `downto`:
* `+=`:
* `-=`:
* Arrays:
	* How to instantiate a new one:
	* How to grab the first element in an array:
	* How to grab the last element: 
	* How to remove the last element:
	* How to remove the first element:
	* How to check whether the element `"odelay"` exists inside an array:
	* Three ways to add a new element to an array:
* Hashes
	* How to instantiate a new one:
	* Keys:
	* Values:
	* How to retreive the value of `"name"` in the hash `person`
	* How to set the value of `name` in the hash `person`
	* How to write a hash with strings as keys
	* How to write a hash with symbols as keys
	
#Class 4 -- Iteration, Gems, APIs

* Iteration:
* `.each`:
	* How to use .each to iterate over each item in an array:
	* How to use .each to iterate over each item in a hash:
* Ruby Gems:
* API:
* JSON: 
* What does HTTParty do exactly? 
* What does `require 'httparty'` do in a Ruby program? 
* Explain what `response = HTTParty.get "https://itunes.apple.com/search?term=smashing%20pumpkins"` does.
* How do you parse `response` into a usable Ruby Hash object? 

#Class 5 -- Classes and Objects
* Class
* Instance
* Why do we have classes in Ruby? 
* what does the `initialize` method do in a class?
* How to set default attributes on new instances of a class? 
* How to customize what comes out of the puts method for instances of a class?
* What does `attr_accessor` do? 
* What are instance variables? How do you get and set them? 
* How do you bring functionality from one Ruby file into another? 
* Why do we separate programs into several files?

#Class6 -- Inheriting behavior

* How to make one class inherit from another? 
* Why is this valuable? 
* How can a child class override methods in a parent class?
* What are modules? 
* How can they be useful? 
* How to give a class all of the methods in a module?

#Class7 -- Installing Rails

* Rails:
* DHH:
* `rails new xyz`:
* rbenv:
* scaffolding:
* rake:
* Rails public folder:

#Class 8 -- Control flow in Rails

* What is the first part of a rails app that gets hit by an HTTP request?
* How is a route formatted? 
* given a route `get '/products' => 'products#index'` what controller needs to exist? 
* What action needs to exist?
* What view needs to exist? 
* What do controllers inherit from?
* What is the naming convention for controllers? 
* What is the naming convention for views? 
* What is the name of the hash that comes with every HTTP request?
* What would said hash be given this: `?product_tye=electronics&maxPrice=80'` at the end of a url?
* How can you set query parameters in a route? 
* In your words, what does a controller _do_?

#Class 9 -- Models intro

* Write a rails generator that creates a model Bike that has the attributes seat_height, type, and wheel_size
* What do models inherit from?
* After generating a model, how do you create that table in the database? 
* `rails c`: 
* In the rails console, how would you create a new bike, type being fixie, seat height 55 and wheel size of 700?
* How would you pass all bike objects to the Bike controller index action? 
* In the index view, how would you loop over that and display all bikes? 
* How would you declare a route to show just one bike?
* In the show action, how do you find a bike by id? 
* In your words, what is a model? What is a database?

#Class 10

* How to define resourceful routes: 
* What are the 7 routes that that one line of code gives you? what are they usually used for?
* How to link to a `show` action in a view:
* What are two ways that you can view all of the available routes in your app?
* How to add columns to a pre-exising database table:
* How to remove them:
* Assuming a `Person` model with attribute `age`, how can you query the database (in the console or controller) to return all Person records ordered by age?

#Class 11

* HTTP method to show a new object form:
* HTTP method that happens after you click submit:
* Why do we use a permit params filter when we handle forms?
* Why do we extract it into a separate private method?
* How to redirect the user to a different view:
* How to make it impossible to save a record without a particular field:


#Class 12/13

* How do you pass an existing record to an edit form from a controller?
* What are partials? How do you use them? 
* Assuming a Tweet model, how do we code the model so that it is impossible to create a tweet with more than 140 characters? How do we ensure that the timestamp exists? 
* Explain how to warn a user that their input in a form is invalid? 
* How do you generate a model that belongs to another? Example, how do you generate a tweet model that belongs to users? 
* Let's say you forgot to make tweets belong to users. How do you relate the models now? What do you need to generate and what code needs to be written? 
* How does that look in the database schema? 
* What is a foreign key? 
* How do you create a tweet that will belong to a particular user? 
* How do you access the email address of tweet's user?
* Let's say you have a blog post model. How do you ensure that all of the comments on the post are deleted automatically when the post itself is deleted? 
* Imagine the model associations between User and Tweet. How would you code your routes so you have user's tweets on a page? 
* List the seven routes that resources :things give you. What does each action normall do? 
* 


