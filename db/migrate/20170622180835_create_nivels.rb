class CreateNivels < ActiveRecord::Migration[5.1]
  def change
    create_table :nivels do |t|
      t.integer :posicao
      t.string :descricao

      t.timestamps
    end
  end
end
