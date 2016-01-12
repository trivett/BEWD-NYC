class AddPhotoToClients < ActiveRecord::Migration
  def change
    add_column :clients, :photo, :string
  end
end
