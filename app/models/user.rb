class User < ApplicationRecord
  validates :name, presence: true
  validates :email, confirmation: true
  validates :subdomain, exclusion: { in: %w(www us ca jp), message: "%{value}は予約済みです" }
end
