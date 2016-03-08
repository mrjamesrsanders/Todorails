class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :item
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
