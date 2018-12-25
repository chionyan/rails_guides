# == Schema Information
#
# Table name: articles
#
#  id         :bigint(8)        not null, primary key
#  text       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#

class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
