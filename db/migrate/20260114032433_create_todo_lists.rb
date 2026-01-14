class CreateTodoLists < ActiveRecord::Migration[8.1]
  def change
    create_table :todo_lists, id: :uuid do |t|
      t.string :title, null: false
      t.text :description
      t.string :color, default: "#FFFFFF"
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
