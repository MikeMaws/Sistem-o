class AddAberturaToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :abertura, :date
  end
end
