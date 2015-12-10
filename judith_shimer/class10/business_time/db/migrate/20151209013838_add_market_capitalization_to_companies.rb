class AddMarketCapitalizationToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :market_capitalization, :integer
  end
end
