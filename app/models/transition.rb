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

class Transition < ApplicationRecord

  has_one :button,
  primary_key: :id,
  foreign_key: :transition_id,
  class_name: :Button

  belongs_to :state,
  primary_key: :id,
  foreign_key: :state_id,
  class_name: :State
end
