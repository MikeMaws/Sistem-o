class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.boolean :status
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
