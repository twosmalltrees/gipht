# == Schema Information
#
# Table name: giphs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Giph < ActiveRecord::Base
  has_attached_file :gif, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :gif, content_type: /\Aimage\/.*\Z/
  belongs_to :user
end
