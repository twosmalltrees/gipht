# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  email               :text
#  username            :text
#  password_digest     :text
#  profile_pic         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
