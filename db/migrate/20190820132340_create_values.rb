class CreateValues < ActiveRecord::Migration[5.2]
  def change
    create_table :values do |t|
      t.string :title
      t.string :content
      t.references :company, foreign_key: true
      t.references :value_category, foreign_key: true

      t.timestamps
    end
  end
end
