class AddDefaultToContactConfirmed < ActiveRecord::Migration
  def change
    change_column :contacts, :confirmed, :boolean, :default => false
  end
end
