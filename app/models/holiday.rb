class Holiday < ApplicationRecord
  validates :name, uniqueness: { scope: :year,
                                 message: '発生は年に1度までである必要があります', }
end
