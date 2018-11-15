class AddForeignKeyToArticles < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :articles, :authors
  end
end
