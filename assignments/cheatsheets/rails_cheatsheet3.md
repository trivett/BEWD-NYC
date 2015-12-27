#Cheat Sheet 3: Associations

##Let's say we are coding up Instagram...

* Code to generate Users: `rails g model User name email_address1`
* Code to generate Photos: `rails g model Photo caption url user:references`
* What should go on the models to create the has many and belongs to associations: 
* Create a User: `User.create(name: 'alice', email_address: 'alice@memail.com')`
* Create a Photo for a User: 

```
alice = User.find(1)
alice.photos.create(caption: "Good hair day photo", url: "http://instapicture.com/alice_picture.jpg")
````
* Routes to associate the two:

```
resources :users do 
  resources :photos
end	

```
* Get all of Alice's photos: 

```
alice = User.find(1)
alice.photos.all

````
