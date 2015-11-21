#Congrats! You have eaten your vegetables.
##You have learned enough ruby to move on to Rails!!

##To celebrate, here's a dang midterm.


#HappiTails

###Prompt

- You are the manager at HappiTails animal shelter. You need to manage your shelter by storing and manipulating information about clients and animals. To make it nice and organized, I gave you some milestones where you can commit. 

###Specification:

#####Object Specs:
- Animal:
  - An animal should have a name.
  - An animal should have a species.
  - An animal can have multiple toys, but doesn't start with any.

- Client:
  - A client should have a name.
  - A client should have an age.
  - A client can have multiple pets (animals), but it doesn't start with any.

- Shelter:
  - A shelter should have a name
  - A shelter can have multiple animals, but it doesn't start with any.
  - A shelter can have multiple clients, but it doesn't start with any.
  - A shelter should be able to display all of its clients.
  - A shelter should be able to display all of its animals.
  - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
  - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)


#####Commit 1
- Define the animal, client and shelter classes according to the specs. Each class should have the appropriate attributes and initialize method.
- Test these out with irb to make sure you can create the objects and that they do what you think the should do. Check the methods that you wrote too!

#####Commit 2
- Create a main.rb
- It should create a new shelter for you
- It should display a menu of options for the user to choose from:
  - Create an animal
  - Create a client
  - Quit
- When creating an animal or client, the user is prompted for information like names, age etc. Newly created animals and clients should be added to the shelter.

#####Commit 3
- Add options to the menu so that a user can successfully:
    - Display all animals
    - Display all clients

#####Commit 4
- Add options to the menu so that a user can:
    - Facilitate client adopteds a particular animal. This means the client now has the animal and they should no longer be a part of the shelter.
    - Facilitate client puts an animal up for adoption. This means the client no longer has the animal and it should be added to the shelter.

#####Commit 5
- Create a seeds.rb file that initializes a shelter as well as a few animals and clients so you have some data to start with when you run your program by requiring this in main.rb.

#####Commit 6 (bonus)
- Create a play module with at least one method to play with one of the Animal's toys. Include this on animal and client. A client should only be able to play if the client has an animal that has toys. 



#####Commit 7 (Bonus)
- Limit the number of animals a client can adopt to 2 per client. If they try to adopt more than that, yell at them.
- Refactor your code to make sure it is DRY (Don't Repeat Yourself) and all your methods are in the appropriate classes.

#####Commit 8 (Bonus)
- Add a new class that inherits from your client class called CatLady. A cat lady only takes cats, and takes all of the cats in the shelter.