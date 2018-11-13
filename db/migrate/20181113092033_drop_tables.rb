class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :products
    drop_table :parts
    drop_table :customers_products
  end
end
