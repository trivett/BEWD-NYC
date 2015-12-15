class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :color
      t.string :color # Should be SizeT
      t.integer :rating

      t.timestamps null: false
    end
  end
end
