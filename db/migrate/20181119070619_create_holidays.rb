class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|
      t.string :name
      t.integer :year
      t.integer :month
      t.integer :day

      t.timestamps
    end
  end
end
