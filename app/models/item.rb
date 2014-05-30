class Item < ActiveRecord::Base
  attr_accessible :available, :description, :name, :price, :shop_id, :size
  belongs_to :shop
end
