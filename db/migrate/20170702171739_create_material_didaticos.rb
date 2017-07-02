class CreateMaterialDidaticos < ActiveRecord::Migration[5.1]
  def change
    create_table :material_didaticos do |t|
      t.string :titulo
      t.string :url
      t.integer :material_id
      t.string  :material_type
      t.timestamps
    end
  end
end
