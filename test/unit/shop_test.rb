# == Schema Information
#
# Table name: shops
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  logo        :string(255)
#  shop_bucket :string(255)
#  url         :string(255)
#  address     :string(255)
#  lat         :float
#  lon         :float
#  facebook    :string(255)
#  twitter     :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  merchant_id :integer
#

require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
