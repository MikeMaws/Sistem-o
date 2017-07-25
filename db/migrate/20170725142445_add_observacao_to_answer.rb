class AddObservacaoToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :observacao, :string,:default => "NÃO HÁ PONTOS A SEREM COMENTADOS"
  end
end
