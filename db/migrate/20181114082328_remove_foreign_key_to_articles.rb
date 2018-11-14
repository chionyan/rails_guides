class RemoveForeignKeyToArticles < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :articles, column: :author_id
  end
end
