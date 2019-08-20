class CreateValueCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :value_categories do |t|
      t.string :name
      t.string :picto_url

      t.timestamps
    end
  end
end
