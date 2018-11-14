class ExampleMigration < ActiveRecord::Migration[5.2]
  def up
    create_table :distributors do |t|
      t.string :zipcode
    end

    execute <<-SQL
    ALTER TABLE distributors
      ADD CONSTRAINT zipchk
        CHECK (char_length(zipcode) = 5) NO INHERIT;
    SQL

    add_column :users, :home_page_url, :string
    rename_column :users, :email, :email_address
  end

  def down
    rename_column :users, :email_address, :email
    remove_column :users, :home_page_url

    execute <<-SQL
    ALTER TABLE distributors
      DROP CONSTRAINT zipchk
    SQL

    drop_table :distributors
  end
end
