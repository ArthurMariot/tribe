class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :country
      t.string :address
      t.string :phone_number
      t.string :activity
      t.string :logo
      t.string :photo_header
      t.string :photo_description
      t.string :twitter_url
      t.string :linkedin_url
      t.string :github_url
      t.string :facebook_url
      t.string :short_description
      t.string :mission
      t.string :history
      t.integer :founded_in

      t.timestamps
    end
  end
end
