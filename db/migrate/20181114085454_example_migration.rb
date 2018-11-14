class ExampleMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :distributors do |t|
      t.string :zipcode
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE distributors
            ADD CONSTRAINT zipchk
              CHECK (char_length(zipcode) = 5) NO INHERIT;
        SQL
        add_column :users, :home_page_url, :string
        rename_column :users, :email, :email_address
      end
      dir.down do
        execute <<-SQL
          ALTER TABLE distributors
            DROP CONSTRAINT zipchk
        SQL
        remove_column :users, :home_page_url
        rename_column :users, :email_address, :email
      end
    end
  end
end
