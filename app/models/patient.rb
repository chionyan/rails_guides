# == Schema Information
#
# Table name: patients
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
end
