class AddGiphyDownsampledUrlToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :giphy_downsampled_url, :text
  end
end
