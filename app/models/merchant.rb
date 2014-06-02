# == Schema Information
#
# Table name: merchants
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  address    :string(255)
#  website    :string(255)
#  phone      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Merchant < ActiveRecord::Base
  #attr_accessible :address, :email, :first_name, :last_name, :phone, :website
  validates :email, confirmation: true
  validates :email_confirmation, presence: true

  has_many :shops

  before_validation :smart_add_website_protocol
 	before_save { website.downcase! }

	protected

	def smart_add_website_protocol
	  unless self.website[/\Ahttp:\/\//] || self.website[/\Ahttps:\/\//]
	    self.website = "http://#{self.website}"
	  end
	end
end
