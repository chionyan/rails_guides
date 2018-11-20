class RemoveColumnsToUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :occupation, :string
    remove_column :users, :subdomain, :string
    remove_column :users, :bio, :string
    remove_column :users, :registration_number, :string
    remove_column :users, :games_played, :integer
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :age, :integer
    remove_column :users, :username, :string
    remove_column :users, :card_number, :string
    remove_column :users, :payment_type, :string
  end

  def down
    add_column :users, :occupation, :string
    add_column :users, :subdomain, :string
    add_column :users, :bio, :string
    add_column :users, :registration_number, :string
    add_column :users, :games_played, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :username, :string
    add_column :users, :card_number, :string
    add_column :users, :payment_type, :string
  end
end
