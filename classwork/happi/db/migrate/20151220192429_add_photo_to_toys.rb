class AddPhotoToToys < ActiveRecord::Migration
  def change
    add_column :toys, :photo, :string
  end
end
