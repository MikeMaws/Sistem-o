class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.boolean :status
      t.string :nome
      t.text :descricao
      t.date :abertura
      t.references :material, polymorphic: true, index: true
      t.timestamps
    end
  end
end
