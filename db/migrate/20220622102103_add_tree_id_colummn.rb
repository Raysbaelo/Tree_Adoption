class AddTreeIdColummn < ActiveRecord::Migration[6.1]
  def change
    add_column :adoptions, :tree_id, :integer, index: true
    add_foreign_key :adoptions, :trees
  end
end
