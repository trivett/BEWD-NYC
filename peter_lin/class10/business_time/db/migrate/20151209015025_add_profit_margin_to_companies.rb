class AddProfitMarginToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :profit_margin, :integer
  end
end
