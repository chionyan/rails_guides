class RemoveColumnProducts < ActiveRecord::Migration[5.2]
  def up
    remove_column :products, :description, :text
    remove_column :products, :part_number, :text
    remove_column :products, :product_number, :string
    remove_column :products, :user_id, :bigint
  end

  def down
    add_column :products, :description, :text
    add_column :products, :part_number, :text
    add_column :products, :product_number, :string
    add_column :products, :user_id, :bigint
  end
end
