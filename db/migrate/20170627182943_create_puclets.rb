class CreatePuclets < ActiveRecord::Migration[5.1]
  def change
    create_table :puclets do |t|
      t.string :nome
      t.references :subtask, foreign_key: true

      t.timestamps
    end
  end
end
