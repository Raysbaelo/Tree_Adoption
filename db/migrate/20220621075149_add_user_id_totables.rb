class AddUserIdTotables < ActiveRecord::Migration[6.1]
  def change
    # add_foreign_key "adoptions", "trees"
    add_column :trees, :user_id, :integer, index: true
    add_foreign_key :trees, :users
  end
  add_column :adoptions, :user_id, :integer, index: true
  add_foreign_key :adoptions, :users
  add_column :reviews, :user_id, :integer, index: true
  add_column :reviews, :adoption_id, :integer, index: true
  add_foreign_key :reviews, :users
  add_foreign_key :reviews, :adoptions
end
