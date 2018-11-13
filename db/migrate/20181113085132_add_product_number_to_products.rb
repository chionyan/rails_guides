class AddProductNumberToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_number, :string
    add_index :products, :product_number
  end
end
