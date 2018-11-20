class AddLegacyCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :legacy_code, :string
  end
end
