class ChangeDatatypePointsOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :points, :float
  end
end
