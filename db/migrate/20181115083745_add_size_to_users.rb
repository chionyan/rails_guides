class AddSizeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :size, :string
  end
end
