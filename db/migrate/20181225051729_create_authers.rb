class CreateAuthers < ActiveRecord::Migration[5.2]
  def change
    create_table :authers do |t|
      t.string :name

      t.timestamps
    end
  end
end
