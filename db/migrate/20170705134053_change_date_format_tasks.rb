class ChangeDateFormatTasks < ActiveRecord::Migration[5.1]
  def change
     change_column :tasks, :abertura, :datetime
  end
end
