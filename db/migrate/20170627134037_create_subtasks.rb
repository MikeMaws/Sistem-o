class CreateSubtasks < ActiveRecord::Migration[5.1]
  def change
    create_table :subtasks do |t|
      t.boolean :status
      t.string :nome
      t.text :descricao
      t.boolean :avaliativa
      t.date :entrega
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
