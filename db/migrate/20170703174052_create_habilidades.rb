class CreateHabilidades < ActiveRecord::Migration[5.1]
  def change
    create_table :habilidades do |t|
      t.string :nome
      t.integer :subtask_id

      t.timestamps
    end
  end
end
