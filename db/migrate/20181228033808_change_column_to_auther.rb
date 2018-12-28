class ChangeColumnToAuther < ActiveRecord::Migration[5.2]
  def up
    add_column :authers, :auther_number, :integer
    rename_column :authers, :name, :auther_name
  end

  def down
    remove_column :authers, :auther_number, :integer
    rename_column :authers, :auther_name, :name
  end
end
