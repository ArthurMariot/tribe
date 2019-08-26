class AddBuddyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :buddy, :integer
  end
end
