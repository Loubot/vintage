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

  has_many :shops
end
