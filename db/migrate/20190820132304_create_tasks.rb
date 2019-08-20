class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :description
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
