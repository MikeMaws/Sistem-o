class AlunosController < ApplicationController
  before_action :authenticate_user!
  def linha_do_tempo
    @tasks    = Task.where("DATE(?) BETWEEN abertura AND fechamento", Time.now)
    @answers  = Answer.all
  #  @answers  = Answer.where(['subtask_id = ?',1])
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

      @current_task = Task.where(id: params[:task_id])  #alterar para o id da task selecionada
      @resps = Answer.all
      @resp = Answer.new
  end
end
