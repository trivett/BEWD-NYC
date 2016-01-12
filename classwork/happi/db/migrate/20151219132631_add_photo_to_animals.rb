class AddPhotoToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :photo, :string
  end
end
