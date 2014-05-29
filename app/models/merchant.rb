class Merchant < ActiveRecord::Base
  attr_accessible :address, :email, :first_name, :last_name, :phone, :website
end
