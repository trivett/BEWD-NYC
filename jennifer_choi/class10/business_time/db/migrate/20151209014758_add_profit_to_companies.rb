class AddProfitToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :profit, :integer
  end
end
