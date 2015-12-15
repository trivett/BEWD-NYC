class AddSizeToTshirts < ActiveRecord::Migration
  def change
  	add_column :tshirts, :size, :string
  end
end
