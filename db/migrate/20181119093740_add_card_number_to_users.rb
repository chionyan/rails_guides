class AddCardNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_number, :string
    add_column :users, :payment_type, :string
  end
end
