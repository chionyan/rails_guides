class RemovePartNumberFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :part_number, :string
    remove_column :products, :product_number, :string
  end
end
