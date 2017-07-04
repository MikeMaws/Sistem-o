class UserPolicy < ApplicationPolicy
  
  def index?
    user.admin?
  end
  
  def linha_do_tempo?
    user.professor?
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
