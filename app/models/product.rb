# == Schema Information
#
# Table name: products
#
#  id             :bigint(8)        not null, primary key
#  description    :text
#  name           :string
#  part_number    :text
#  product_number :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint(8)
#
# Indexes
#
#  index_products_on_product_number  (product_number)
#  index_products_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class ProductCallbacks
  def self.before_destroy(product)
    if product.product_number.blank?
      Product.find_by(name: product.product_number).delete
    else
      throw :abort
    end
  end
end

class Product < ApplicationRecord
  belongs_to :user, counter_cache: :products_count

  before_save :normalize_product_number, if: :name?,
    unless: Proc.new { self.name == 'hoge' }

  before_destroy ProductCallbacks

  private

  def normalize_product_number
    self.product_number = '123456'
  end

  def name?
    self.name.present?
  end
end
