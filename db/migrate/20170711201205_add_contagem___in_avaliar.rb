class AddContagemInAvaliar < ActiveRecord::Migration[5.1]
  def change
     add_column :avaliars, :novato, :integer ,:default => 0
     add_column :avaliars, :competente, :integer ,:default => 0
     add_column :avaliars, :mestre, :integer ,:default => 0
  end
end
