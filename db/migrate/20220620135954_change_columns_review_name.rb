class ChangeColumnsReviewName < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :first_name, :rating
    rename_column :reviews, :last_name, :content
  end
end
