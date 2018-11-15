class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, confirmation: true
  validates :subdomain, exclusion: { in: %w(www us ca jp), message: "%{value}は予約済みです" }
  validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/, message: "英文字のみが使用できます" }
  validates :size, inclusion: { in: %w(small medium large), message: "%{value} のサイズは無効です" }
  validates :bio, length: { maximum: 500 }
end
