class AddApprovedToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :approved, :boolean, default: true, null: false
    add_column :products, :name, :string
  end
end
