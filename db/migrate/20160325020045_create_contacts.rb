class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts, :id => false do |t|
      t.integer :user_id
      t.integer :contact_id
      t.boolean :confirmed
      t.timestamps null: false
    end
    add_index :contacts, :user_id
    add_index :contacts, [:user_id, :contact_id], unique: true
  end
end
