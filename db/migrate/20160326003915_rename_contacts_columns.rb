class RenameContactsColumns < ActiveRecord::Migration
  def change
    rename_column :contacts, :user_id, :owner_id
    rename_column :contacts, :contact_id, :user_id
  end
end
