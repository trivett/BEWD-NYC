class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :year_released

      t.timestamps null: false
    end
  end
end
