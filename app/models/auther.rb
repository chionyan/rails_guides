# == Schema Information
#
# Table name: authers
#
#  id            :bigint(8)        not null, primary key
#  auther_name   :string
#  auther_number :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Auther < ApplicationRecord
  has_many :books, dependent: :destroy
end
