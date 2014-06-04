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
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
