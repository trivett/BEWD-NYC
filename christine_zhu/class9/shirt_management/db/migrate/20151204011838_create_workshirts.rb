class CreateWorkshirts < ActiveRecord::Migration
  def change
    create_table :workshirts do |t|
      t.string :color
      t.string :size
      t.string :fabric

      t.timestamps null: false
    end
  end
end
