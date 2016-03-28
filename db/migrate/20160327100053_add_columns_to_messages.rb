class AddColumnsToMessages < ActiveRecord::Migration
  def change
    rename_column :messages, :content, :gif_identifier
    add_column :messages, :gif_type, :text
  end
end
