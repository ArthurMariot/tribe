class CreateHierarchyRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :hierarchy_ranks do |t|
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end
