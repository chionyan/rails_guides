class Product < ApplicationRecord
  belongs_to :user, counter_cache: :products_count

  before_save :normalize_product_number, if: :name?,
    unless: Proc.new { self.name == 'hoge' }

  private

  def normalize_product_number
    self.product_number = '123456'
  end

  def name?
    self.name.present?
  end
end
