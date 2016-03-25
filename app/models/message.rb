# == Schema Information
#
# Table name: messages
#
#  id              :integer          not null, primary key
#  conversation_id :integer
#  content         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#

class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user
end
