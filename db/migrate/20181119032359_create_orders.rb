class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, &:timestamps
  end
end
