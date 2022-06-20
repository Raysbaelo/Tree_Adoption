class AddreferencesToBelongs < ActiveRecord::Migration[6.1]
  def changes
    create_table :trees do |t|
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
    create_table :adoptions do |t|
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :adoption, null: false, foreign_key: true
      t.timestamps
    end
  end
end
