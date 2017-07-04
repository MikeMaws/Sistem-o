class AlunosController < ApplicationController
  def linha_do_tempo
    @tasks = Task.all
  end
  def missao
  end
  def privilegio
  end
  def grafico_progresso
  end
  def grafico_habilidade
  end
  def profile
  end
  def resolver_task
      @current_task = Task.where(id: 1)  #alterar para o id da task selecionada
  end
end