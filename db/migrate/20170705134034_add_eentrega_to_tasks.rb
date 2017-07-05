class AddEentregaToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :entrega, :datetime
  end
end
