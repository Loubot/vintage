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

require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
