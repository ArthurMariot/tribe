class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :onboarding_status, :boolean, default: false
  end
end
