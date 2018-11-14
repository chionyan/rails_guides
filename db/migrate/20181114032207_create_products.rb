class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, comment: 'プロダクトのテーブル' do |t|
      t.string :name
    end
  end
end
