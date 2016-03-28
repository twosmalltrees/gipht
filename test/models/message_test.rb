# == Schema Information
#
# Table name: messages
#
#  id                    :integer          not null, primary key
#  conversation_id       :integer
#  gif_identifier        :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#  gif_type              :text
#  giphy_downsampled_url :text
#

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
