class UserPolicy < ApplicationPolicy
  
  def index?
    user.admin?
  end
  
  def linha_do_tempo?
    user.professor?
  end
  
  def alunos?
    user.professor?
  end
  
  def edit?
    user.professor?
  end
  
  def professor?
    user.professor?
  end
  
  def aluno?
    user.aluno?
  end  
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
