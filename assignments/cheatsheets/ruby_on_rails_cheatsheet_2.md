#Ruby on Rails Cheatsheet #2

Links:
* `<%= link_to("Text of link", "url") %>`
* OR
* `<%= link_to("Text of link", variable/path helper) %>`

Resourceful routes:
* `resources :things`
* Gives you 7 routes:
	* index
	* show
	* new
	* create
	* edit
	* update
	* destroy
	
* `redirect_to` redirects to a different path or URL than the default view for a controller action. Useful for create, update and delete actions.
	
Rake jobs:
* `rake db:reset` (blow away your database and start over)
* `rake db:seed` (populate database with seeds.rb data)

Active Record
* `Model.where(city: "some city")` (Finds Model records with a `city` attribute of "some city")
* `Model.find(3)` (finds one record with the ID of 3)
* `Company.order(:number_of_employees)` (returns all Company records in order by number_of_employees)
* `Company.find(2).destroy` (destroys the Company with the id of 2)

Updating models

* `AddXXXToYYY` (adds column XXX to the YYY table) 
* example:
* `rails g migration AddCityToCompanies city:string`
* `RemoveXXXFromYYY` removes a column.

Deleting Data

* `<%= link_to 'text of link', variable of thing you want to delete, method: :delete, data: { confirm: 'Are you sure?' } %>`
* Example:
* `<%= link_to 'Destroy', @company, method: :delete, data: { confirm: 'Are you sure?' } %>`


Forms

Template for a basic form given `@product = Product.new` in the `new` action:

````

<%= form_for @product do |f| %>
	<p>Name: <%= f.text_field :name %></p>
	<p>Price: <%= f.text_field :price %></p>
  <%= f.submit %>
<% end %>

````

Controller action for creating product: 

````

  def create
    @product = Product.new(safe_product_params)
	@product.save
  end
  
  
   private

   def safe_product_params
     params.require('product').permit(:name, :price)
   end

````


Flash messages:

In the controller: `flash[:notice] = "Shirt created!"`

In the view: `<%= flash[:notice] %>


Model Validators:

In model file (app/models/xxx.rb)


* `validates :name presence: true` you can't save the model without a name
*  `validates :description, length: { minimum: 10 }` if the entered description is less than 10 characters it will not save.







