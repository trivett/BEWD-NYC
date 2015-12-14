class RemoveNumberOfEmployeesFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :number_of_employees, :string
  end
end
