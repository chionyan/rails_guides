# == Schema Information
#
# Table name: books
#
#  id           :bigint(8)        not null, primary key
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  auther_id    :bigint(8)
#
# Indexes
#
#  index_books_on_auther_id  (auther_id)
#
# Foreign Keys
#
#  fk_rails_...  (auther_id => authers.id)
#

class Book < ApplicationRecord
  belongs_to :auther
  has_many :line_items, dependent: :destroy
end
