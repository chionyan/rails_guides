class DropTables < ActiveRecord::Migration[5.2]
  def up
    drop_table :holidays
    drop_table :computers
    drop_table :invoices
  end

  def down
    create_table :holidays do |t|
      t.string :name
      t.integer :year
      t.integer :month
      t.integer :day
      t.timestamps
    end
    create_table :computers do |t|
      t.string :mouse
      t.boolean :trackpad
      t.timestamps
    end
    create_table :invoices do |t|
      t.date :expiration_date
      t.integer :discount
      t.integer :total_value
      t.timestamps
    end
  end
end
