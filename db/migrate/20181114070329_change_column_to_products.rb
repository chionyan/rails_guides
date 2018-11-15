class ChangeColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :part_number, :text
  end
end
