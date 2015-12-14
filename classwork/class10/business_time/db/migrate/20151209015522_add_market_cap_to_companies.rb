class AddMarketCapToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :market_cap, :integer
  end
end
