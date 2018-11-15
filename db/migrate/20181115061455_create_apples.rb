class CreateApples < ActiveRecord::Migration[5.2]
  def change
    suppress_messages do
      create_table :apples do |t|
        t.string :name
        t.text :description
      end
    end
    say "Created a table"

    suppress_messages {add_index :apples, :name}
    say "and an index!", true

    say_with_time 'Waiting for a while' do
      sleep 10
      250
    end
  end
end
