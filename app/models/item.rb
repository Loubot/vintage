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
#  available   :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  avatar      :string(255)
#

class Item < ActiveRecord::Base
  #attr_accessible :available, :description, :name, :price, :shop_id, :size
  
  
  belongs_to :shop
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

end
