class ChangePosicaoFormatInNivel < ActiveRecord::Migration[5.1]
  def change
        change_column :nivels, :posicao, :string
  end
end
