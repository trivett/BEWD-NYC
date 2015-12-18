class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.references :course

      t.timestamps null: false
    end
  end
end
