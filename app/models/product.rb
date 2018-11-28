class Product < ApplicationRecord
  belongs_to :user, counter_cache: :products_count
end
