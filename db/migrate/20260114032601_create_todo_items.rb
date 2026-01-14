class CreateTodoItems < ActiveRecord::Migration[8.1]
  def change
    create_table :todo_items, id: :uuid do |t|
      t.string :content, null: false
      t.boolean :completed, default: false
      t.datetime :due_date
      t.integer :priority, default: 0
      t.references :todo_list, null: false, foreign_key: true, type: :uuids

      t.timestamps
    end
  end
end
