# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  owner_id   :integer
#  user_id    :integer
#  confirmed  :boolean          default("false")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :user
  validates :user, :presence => true
  validates :user_id, :presence => true, :uniqueness => { :scope => :owner_id }
end
