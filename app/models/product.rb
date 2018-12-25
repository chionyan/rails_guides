class Product < ApplicationRecord
  belongs_to :user, counter_cache: :products_count

  before_save :normalize_product_number,
    if: Proc.new { self.name.present? }

  private

  def normalize_product_number
    self.product_number = '123456'
  end
end
