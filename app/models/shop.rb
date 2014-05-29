class Shop < ActiveRecord::Base
  attr_accessible :address, :facebook, :lat, :lat, :logo, :lon, :name, :twitter, :url


 	before_validation :smart_add_url_protocol
 	before_save { url.downcase! }

protected

	def smart_add_url_protocol
	  unless self.url[/\Ahttp:\/\//] || self.url[/\Ahttps:\/\//]
	    self.url = "http://#{self.url}"
	  end
	end
end
