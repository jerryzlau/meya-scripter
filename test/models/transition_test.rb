# == Schema Information
#
# Table name: transitions
#
#  id         :integer          not null, primary key
#  state_id   :integer          not null
#  key        :string           not null
#  value      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TransitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
