class ProfessoresController < ApplicationController
  before_action :authenticate_user!
  def profile
  end
  def linha_do_tempo
    @users = User.where(role: 0)
  end
  def alunos
    @users = User.where(role: 0)
  end
  
  def aluno_resumo
    @avals= Avaliar.where(user_id: params[:user_id])
    @users = User.where(id: params[:user_id])
    @answers  = Answer.where(user_id: params[:user_id])
  end
end