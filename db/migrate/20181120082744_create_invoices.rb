class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.date :expiration_date
      t.integer :discount
      t.integer :total_value

      t.timestamps
    end
  end
end
