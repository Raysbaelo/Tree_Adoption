class CreateTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :trees do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_year
      t.integer :quantity_per_year
      t.string :fruit

      t.timestamps
    end
  end
end
