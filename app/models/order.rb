# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  has_many :line_items, inverse_of: :order
end
