class CreateGiphs < ActiveRecord::Migration
  def change
    create_table :giphs do |t|
      t.integer :user_id
      t.text :url
      t.timestamps null: false
    end
  end
end
