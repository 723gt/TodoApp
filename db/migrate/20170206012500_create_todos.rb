class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.text :user_id
      t.text :content
      t.text :memo
      t.integer :tasktype

      t.timestamps
    end
  end
end
