class RemoveNumberOfEmployeesFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :number_of_emloyees, :integer
  end
end
