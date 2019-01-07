class AddActiveToAuther < ActiveRecord::Migration[5.2]
  def up
    remove_column :books, :active, :boolean
    add_column :authers, :active, :boolean, null: false, default: true
  end

  def down
    add_column :books, :active, :boolean, null: false, default: true
    remove_column :authers, :active, :boolean
  end
end
