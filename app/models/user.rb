# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  username        :text
#  password_digest :text
#  profile_pic     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :contacts, :foreign_key => 'owner_id'
  has_many :giphs
  has_and_belongs_to_many :conversations
  has_many :messages
end
