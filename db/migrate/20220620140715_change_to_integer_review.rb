class ChangeToIntegerReview < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :rating, 'integer USING CAST(rating AS integer)'
    change_column :reviews, :content, 'text USING CAST(content AS text)'
  end
end
