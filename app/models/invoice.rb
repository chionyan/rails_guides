class Invoice < ApplicationRecord
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    errors.add(:expiration_date, '：過去の日付は使用できません') if expiration_date.present? && expiration_date < Time.zone.today
  end
end
