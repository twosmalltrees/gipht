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
end
