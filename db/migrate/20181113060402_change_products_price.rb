class ChangeProductsPrice < ActiveRecord::Migration[5.2]
  def up
    # change_table :products do |t|
    #   t.change :price, :string
    # end
  end

  def down
    # change_table :products do |t|
    #   t.change :price, 'integer USING CAST(price AS integer)'
    # end
  end
end
