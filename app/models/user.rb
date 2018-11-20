class MyValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:name] << '名前はhで始まる必要があります' unless record.name.starts_with? 'h'
  end
end

class User < ApplicationRecord
  validates :name, presence: { strict: true }
  validates :email, presence: true
  validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/, message: '英文字のみが使用できます' }
  validates :size, inclusion: { in: %w[small medium large], message: '%{value} のサイズは無効です' }, allow_blank: true
  validates :bio, length: { maximum: 500 }
  validates :registration_number, length: { is: 6 }
  validates :points, numericality: true
  validates :games_played, numericality: { even: true }
  validates :boolean_field, inclusion: { in: [true, false] }
  validates :boolean_field, exclusion: { in: [nil] }

  validates_with MyValidator
end
