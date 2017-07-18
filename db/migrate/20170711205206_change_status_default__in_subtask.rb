class ChangeStatusDefaultInSubtask < ActiveRecord::Migration[5.1]
  def change
    change_column :subtasks, :avaliativa, :boolean ,:default => true
    change_column :subtasks, :status, :boolean ,:default => true
  end
end
