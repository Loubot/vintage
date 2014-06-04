# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  item_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Photo < ActiveRecord::Base
	belongs_to :item
	mount_uploader :avatar, AvatarUploader
end
