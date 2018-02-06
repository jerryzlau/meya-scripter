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

class Button < ApplicationRecord

  belongs_to :property,
  primary_key: :id,
  foreign_key: :property_id,
  class_name: :Property

  belongs_to :flow,
  primary_key: :id,
  foreign_key: :flow_id,
  class_name: :Flow

  belongs_to :transition,
  primary_key: :id,
  foreign_key: :transition_id,
  class_name: :Transition
end
