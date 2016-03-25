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
  has_many :contacts
  has_many :giphs
  has_and_belongs_to_many :conversations
  has_many :messages, :through => :conversations
end
