class CreateAssembliesParts < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblies_parts do |t|
      t.references :assembly, foreign_key: true
      t.references :part, foreign_key: true
    end
  end
end
