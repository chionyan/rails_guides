class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :occupation
      t.string :string

      t.timestamps
    end
  end
end
