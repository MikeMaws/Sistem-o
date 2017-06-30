class CreateMaterialdidaticos < ActiveRecord::Migration[5.1]
  def change
    create_table :materialdidaticos do |t|
      t.string :descricao
      t.string :link
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
