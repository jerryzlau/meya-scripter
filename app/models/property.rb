# == Schema Information
#
# Table name: properties
#
#  id         :integer          not null, primary key
#  state_id   :integer          not null
#  text       :string
#  output     :string
#  key        :string
#  scope      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Property < ApplicationRecord

  belongs_to :state,
  primary_key: :id,
  foreign_key: :state_id,
  class_name: :State

  has_many :buttons,
  primary_key: :id,
  foreign_key: :property_id,
  class_name: :Button
end
