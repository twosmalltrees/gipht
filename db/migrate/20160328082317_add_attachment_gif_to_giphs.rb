class AddAttachmentGifToGiphs < ActiveRecord::Migration
  def self.up
    change_table :giphs do |t|
      t.attachment :gif
    end
  end

  def self.down
    remove_attachment :giphs, :gif
  end
end
