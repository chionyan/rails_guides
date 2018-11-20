class Invoice < ApplicationRecord
  validate :expiration_date_cannot_be_in_the_past
  validate :discount_cannot_be_greater_than_total_value

  def expiration_date_cannot_be_in_the_past
    errors.add(:expiration_date, '：過去の日付は使用できません') if expiration_date.present? && expiration_date < Time.zone.today
  end

  def discount_cannot_be_greater_than_total_value
    errors.add(:discount, '合計額を上回ることはできません') if discount > total_value
  end
end
