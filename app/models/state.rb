# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  flow_id    :integer          not null
#  component  :string
#  return     :boolean
#  name       :string           not null
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class State < ApplicationRecord

  belongs_to :flow,
  primary_key: :id,
  foreign_key: :flow_id,
  class_name: :Flow

  has_one :property,
  primary_key: :id,
  foreign_key: :state_id,
  class_name: :Property

  has_many :transitions,
  primary_key: :id,
  foreign_key: :state_id,
  class_name: :Transition
end
