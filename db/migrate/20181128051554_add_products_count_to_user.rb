class AddProductsCountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :products_count, :integer, default: 0
  end
end
