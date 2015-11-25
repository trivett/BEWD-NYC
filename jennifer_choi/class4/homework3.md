HW Question


# Part 1 - Loops & reverse engineering

Set a variable to an array with a bunch of random numbers in it. Just mash the keys and make them random. 

Perform the .max method on the array.

Ex.

`my_arr = [4, 92, 20934, 4324, 46, 2903, 236, 902]`

`my_arr.max`

What does it output? Look up .max in ruby-doc.org to make sure that it does what you think it does. 


Now let's reverse engineer `.max`. Create a method called `my_max` which takes a parameter (expecting an array). It should output exactly what you would get if you ran `.max` on the array. 


#HTTParty Cheat Sheet

````
require 'httparty'
require 'json'


response = HTTparty.get "<<any url here>>"

# ex: response = HTTParty.get("https://itunes.apple.com/search?term=ke$ha")

# This returns an HTTparty response. 
# to turn it into a Hash, which we are familiar with, we need to parse it:

j = JSON.parse(response)

j.class 
#should be a Hash!


`````


# Part 2 - Jukebox

Follow the instructions in tunr.rb

Answer the following questions:

* What is the method that returns a random element from an array? A: .sample
* What does .gsub(" ", "+") do on a string? A: It replaces any instances of the pattern with the replacement. Why is that part of the code of tunr.rb? A: Replaces spaces with plus sign 
* In your words, explain how the loop in tunr.rb works to let the user continually keep playing new songs or requesting new song lists.

3. BONUS: More Teddit

Revisit the teddit exercise from Tuesday. In case you weren't here for that,  Can you rework this code to let the user add as many stories as he or she pleases? 
Hint: While the user says yes, continue prompting to re-add stories and push them to the array of stories. 

After each story is added, display all stories in descending order by upvotes. 

This will require a bit of thought and perhaps research. 
