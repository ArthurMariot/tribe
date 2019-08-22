class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :visit_pages1, :boolean, default: false
    add_column :users, :visit_pages2, :boolean, default: false
    add_column :users, :visit_pages3, :boolean, default: false
    add_column :users, :visit_pages4, :boolean, default: false
    add_column :users, :visit_pages5, :boolean, default: false
    add_column :users, :visit_pages6, :boolean, default: false
    add_column :users, :visit_pages7, :boolean, default: false
    add_column :users, :upload_contrat, :string
    add_column :users, :upload_internal_rules, :string
  end
end
