class AddGraphicsToTshirtsTable < ActiveRecord::Migration
  def change
  	add_column :tshirts, :graphics, :string
  end
end
