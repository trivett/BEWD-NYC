class RemoveNumberOfEmployeesFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :number_of_employees, :integer
    add_column :companies, :market_capitalization, :integer
  end
end
