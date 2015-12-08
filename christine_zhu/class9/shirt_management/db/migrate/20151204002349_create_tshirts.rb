class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :color
      t.string :size
      t.integer :rating

      t.timestamps null: false
    end
  end
end
