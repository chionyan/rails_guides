class Product < ApplicationRecord
  belongs_to :user, counter_cache: :products_count

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Post destroyed'
  end
end
