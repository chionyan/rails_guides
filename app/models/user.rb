class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:base] << 'これは悪人だ' if options[:fields].any? { |field| record.send(field) == 'Evil' }
  end
end

class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, too_short: '%{count}以上入力してください' },
                   uniqueness: { case_sensitive: false }
  validates :email, confirmation: true, uniqueness: true
  validates :subdomain, exclusion: { in: %w[www us ca jp], message: '%{value}は予約済みです' }
  validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/, message: '英文字のみが使用できます' }
  validates :size, inclusion: { in: %w[small medium large], message: '%{value} のサイズは無効です' }
  validates :bio, length: { maximum: 500 }
  validates :password, length: { in: 6..20 }
  validates :registration_number, length: { is: 6 }
  validates :points, numericality: true
  validates :games_played, numericality: { even: true }
  validates :boolean_field, inclusion: { in: [true, false] }
  validates :boolean_field, exclusion: { in: [nil] }
  validates :occupation, absence: true

  validates_with GoodnessValidator, fields: [:first_name, :last_name]
  validates_each :first_name, :last_name do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
  end
end
