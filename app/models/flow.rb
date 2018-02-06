# == Schema Information
#
# Table name: flows
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Flow < ApplicationRecord

  has_many :states,
  primary_key: :id,
  foreign_key: :flow_id,
  class_name: :State

  has_many :buttons,
  primary_key: :id,
  foreign_key: :flow_id,
  class_name: :Button
end
