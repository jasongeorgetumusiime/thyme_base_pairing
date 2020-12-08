class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :description
      t.string :status
      t.bigint :list_id

      t.timestamps
    end

    add_foreign_key :todos, :lists, column: :list_id
    add_index
  end
end
