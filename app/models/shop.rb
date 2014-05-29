class Shop < ActiveRecord::Base
  attr_accessible :address, :facebook, :lat, :lat, :logo, :lon, :name, :twitter, :url

  after_save :validate_url

  def validate_url
  	url = self.url
  	url = /^http/.match(url) ? url : "http://#{url}"
  	self.update_attributes(url: url)
  end
end
