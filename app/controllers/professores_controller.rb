class ProfessoresController < ApplicationController
before_action :authenticate_user! 
  def profile
  end
  def linha_do_tempo
    @users = User.where(role: 0)
    @answers = Answer.where(nivel: 0)
    @niveis  = Nivel.all
  end
  
  def alunos
    @users = User.where(role: 0)
  end
end