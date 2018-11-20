class AddUserInfoColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bio, :string
    add_column :users, :password, :string
    add_column :users, :registration_number, :string
  end
end
