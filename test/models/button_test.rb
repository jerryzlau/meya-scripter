# == Schema Information
#
# Table name: buttons
#
#  id            :integer          not null, primary key
#  property_id   :integer          not null
#  flow_id       :integer
#  transition_id :string
#  text          :string           not null
#  url           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ButtonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
