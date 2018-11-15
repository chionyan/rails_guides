class User < ApplicationRecord
  validates :name, presence: true
  validates :email, confirmation: true
end
