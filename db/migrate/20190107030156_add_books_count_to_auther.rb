class AddBooksCountToAuther < ActiveRecord::Migration[5.2]
  def up
    add_column :authers, :books_count, :integer, default:0
  end

  def down
    remove_column :authers, :books_count, :integer
  end
end
