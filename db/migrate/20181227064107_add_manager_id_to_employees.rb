class AddManagerIdToEmployees < ActiveRecord::Migration[5.2]
  def up
    add_column :employees, :manager_id, :bigint
  end

  def down
    remove_column :employees, :manager_id, :bigint
  end
end
