# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  contact_id :integer
#  confirmed  :boolean          default("false")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base
  validates :user, :presence => true
  validates :contact, :presence => true, :uniqueness => { :scope => :user_id }
  belongs_to :user
end
