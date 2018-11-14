class DontUseConstraintForZipcodeValidationMigration < ActiveRecord::Migration[5.2]
  def change
    revert do
      reversible do |dir|
        dir.up do
          execute <<-SQL
            ALTER TABLE distributors
              ADD CONSTRAINT zipchk
                CHECK (char_length(zipcode) = 5);
          SQL
        end

        dir.down do
          execute <<-SQL
            ALTER TABLE distributors
              DROP CONSTRAINT zipchk
          SQL
        end
      end
    end
  end
end
