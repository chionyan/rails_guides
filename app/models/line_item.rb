# == Schema Information
#
# Table name: line_items
#
#  id         :bigint(8)        not null, primary key
#  sentence   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint(8)
#
# Indexes
#
#  index_line_items_on_book_id  (book_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#

class LineItem < ApplicationRecord
  belongs_to :book
end
