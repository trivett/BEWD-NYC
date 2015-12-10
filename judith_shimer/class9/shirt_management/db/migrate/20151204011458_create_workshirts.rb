class CreateWorkshirts < ActiveRecord::Migration
  def change
    create_table :workshirts do |t|
      t.string :style
      t.string :color
      t.integer :rating

      t.timestamps null: false
    end
  end
end
