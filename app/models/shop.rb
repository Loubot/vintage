class Shop < ActiveRecord::Base
  attr_accessible :address, :facebook, :lat, :lat, :logo, :lon, :name, :twitter, :url

  before_save :validate_url

  def validate_url
  	shop = Shop.find(self.id)
  	puts "id#{shop.id}"
  	/^http/.match(shop.url) ? shop.url : "http://#{url}"
  end
end
