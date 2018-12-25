class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.references :auther, foreign_key: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
