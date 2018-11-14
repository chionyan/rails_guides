class AddDescriptionToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :description, :string
    add_column :products, :upccode, :string
  end
end
