class AddColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :zipcode, :string, default: ""
    add_column :companies, :website_url, :string, default: ""
    add_column :companies, :city, :string, default: ""
  end
end
