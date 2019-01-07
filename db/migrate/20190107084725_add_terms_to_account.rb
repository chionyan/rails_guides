class AddTermsToAccount < ActiveRecord::Migration[5.2]
  def up
    add_column :accounts, :terms, :string
  end

  def down
    remove_column :accounts, :terms, :string
  end
end
