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

class User < ActiveRecord::Base
  has_secure_password
  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "avatar_missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :email, :presence => true, :uniqueness => true
  has_many :contacts, :foreign_key => 'owner_id'
  has_many :giphs
  has_and_belongs_to_many :conversations
  has_many :messages
end
