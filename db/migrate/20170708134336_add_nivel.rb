class AddNivel < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :nivel, :integer ,:default => 0
  end
end
