class AddNumericalityColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :points, :integer
    add_column :users, :games_played, :integer
  end
end
