# == Schema Information
#
# Table name: authers
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Auther < ApplicationRecord
  has_many :books, dependent: :destroy, inverse_of: 'writer'
end
