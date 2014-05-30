# == Schema Information
#
# Table name: shops
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  logo        :string(255)
#  url         :string(255)
#  address     :string(255)
#  lat         :float
#  lon         :float
#  facebook    :string(255)
#  twitter     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
