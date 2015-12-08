#Rails Cheat sheet #1

##Routes

* In `config/routes.rb`
* declare them like so:

````
method "path" => 'controllername#actionname'

````

For example `get '/users' => 'users#index'`

*	This will accept a get request to /users.
*	The name of the controller has to be `UsersController` in the file `app/controllers/users_controller.rb`
*	The name of the action will have to be index.
*	By default, this will render the template in `app/views/users/index.html.erb`

##Controllers

* File should be in `app/controllers/`
* File name has to be resource plural + _ + controller.rb
* Ex:
	* `users_controller.rb`
	* `games_controller.rb`	
* Class must be in CamelCase
* Ex:
	* UsersController
	* WomenController
* Rails is smart about irregular plurals in English but not all of them.
* Always inherit from ApplicationController.
* Declare actions with `def`
* Inside a controller action, you can declare instance variables with @
* given: 

````
def index
	@users = "hello"
end

````
* Gives the view access to the @users variable

##Views
* Pluralize the resource that the view/controller handles and make a folder located `app/views/`
* UsersController will look for views in `app/views/users/`
* The name of the file should match the controller action.
* For the index action in the controller, you will need a file titled `index.html.erb`
* ERB tags are evaluated as Ruby.
* <% this will not print %>
* <%= this will print %>
* You can use the instance variables you declared in your controller action

##Models
* A model is a Ruby class. Instances of these classes are records in a database.
* Generate models from the command line like so:
* `rails g model Name attribute:attributedatatype attribute:attributedatatype`
* Ex: `rails g model User name:string age:integer`
* Capitalize the name of the model, always singular.
* In the generator, if you don't specify data type, it will default to string.
* This creates a migration file in `db/migrate`
* You can edit this before you `rake db:migrate` but not after. 
* By running `rake db:migrate`, you create a database table called `users` with a column for name and age. 

##Creating data in the Rails console
* type `rails c` to open the console.
* Given the example above, you can create users with the following command:

````
User.create(name: "vincent", age: 31)
````
* When this record is created in the database, it is given an id, which is a serial number, and a created_at timestamp.
* You can use dot notation to get and set attributes like so:

````
u = User.find(1)

u.name
#=> "vincent"

u.name = "bobby"

u.name
#=> "bobby"

````

* The views access models _through_ controllers.
* like so: 

````
def index
	@users = User.all
end

````

* This would set the instance variable @users to _all_ of the users in the database.
* This is now available in the view.
* Note that User is singular despite the fact that we are getting all of the User objects.








