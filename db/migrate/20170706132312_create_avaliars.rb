class CreateAvaliars < ActiveRecord::Migration[5.1]
  def change
    create_table :avaliars do |t|
      t.float :nota, default: 0.0
      t.float :comunicacao, default: 0.0
      t.float :colaboracao, default: 0.0
      t.float :construcao, default: 0.0
      t.float :pcritico, default: 0.0
      t.float :compromisso, default: 0.0
      t.float :criatividade, default: 0.0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
