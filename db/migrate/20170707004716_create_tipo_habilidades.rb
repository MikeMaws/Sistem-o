class CreateTipoHabilidades < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_habilidades do |t|
      t.string :nome

      t.timestamps
    end
  end
end
