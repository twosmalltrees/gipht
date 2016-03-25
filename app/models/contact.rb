# == Schema Information
#
# Table name: contacts
#
#  user_id    :integer
#  contact_id :integer
#  confirmed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base
end
