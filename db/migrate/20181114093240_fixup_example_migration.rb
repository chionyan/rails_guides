require_relative '20181114085454_example_migration'


class FixupExampleMigration < ActiveRecord::Migration[5.2]
  def change
    revert ExampleMigration

    create_table(:apples) do |t|
      t.string :variety
    end
  end
end
