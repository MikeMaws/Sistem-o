class TaskPolicy < ApplicationPolicy
  def index?
    user.professor?
  end

  def show?
    user.professor?
  end

  def new?
    user.professor?
  end


  class Scope < Scope
    def resolve
      scope
    end
  end
end
