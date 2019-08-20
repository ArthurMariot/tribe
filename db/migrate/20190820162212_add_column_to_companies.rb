class AddColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :zipcode, :string
    add_column :companies, :website_url, :string
    add_column :companies, :city, :string
  end
end
