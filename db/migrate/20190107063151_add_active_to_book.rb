class AddActiveToBook < ActiveRecord::Migration[5.2]
  def up
    add_column :books, :active, :boolean, null: false, default: true
  end

  def down
    remove_column :books, :active, :boolean
  end
end
