class CreateComputers < ActiveRecord::Migration[5.2]
  def change
    create_table :computers do |t|
      t.string :mouse
      t.boolean :trackpad

      t.timestamps
    end
  end
end
