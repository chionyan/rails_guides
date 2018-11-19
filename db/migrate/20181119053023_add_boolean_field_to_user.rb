class AddBooleanFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :boolean_field, :boolean
  end
end
