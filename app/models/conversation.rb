# == Schema Information
#
# Table name: conversations
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Conversation < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :messages
end
