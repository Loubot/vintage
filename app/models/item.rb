# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  size        :float
#  shop_id     :integer
#  price       :decimal(8, 2)
#  available   :binary
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
  #attr_accessible :available, :description, :name, :price, :shop_id, :size
  mount_uploader :avatar, AvatarUploader
  
  belongs_to :shop, dependent: :destroy
end
