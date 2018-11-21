class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/.match?(value)
      record.errors[attribute] << (options[:message] || 'はメールアドレスではありません')
    end
  end
end

class User < ApplicationRecord
  validates :email, presence: true, email: true
  validates :password, length: { in: 6..20 }
  validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/, message: '英文字のみが使用できます' }
  validates :size, inclusion: { in: %w[small medium large], message: '%{value} のサイズは無効です' }, allow_blank: true
  validates :points, numericality: true
  validates :boolean_field, inclusion: { in: [true, false] }
  validates :boolean_field, exclusion: { in: [nil] }
  validates :login, :email, presence: true
  before_validation :ensure_login_has_a_value

  before_create do
    self.name = login.capitalize if name.blank?
  end

  private

  def ensure_login_has_a_value
    return false unless login.nil?

    self.login = email if email.present?
  end
end
