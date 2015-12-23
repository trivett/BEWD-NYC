class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
