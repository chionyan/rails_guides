class AddSubdomainToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :subdomain, :string
    remove_column :users, :string
  end
end
