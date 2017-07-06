class CreateAvaliars < ActiveRecord::Migration[5.1]
  def change
    create_table :avaliars do |t|
      t.float :nota
      t.float :comunicacao
      t.float :colaboracao
      t.float :construcao
      t.float :pcritico
      t.float :compromisso
      t.float :criatividade
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
