class CreateWorkshirts < ActiveRecord::Migration
  def change
    create_table :workshirts do |t|
      t.string :color
      t.integer :rating
      t.integer :size

      t.timestamps null: false
    end
  end
end
