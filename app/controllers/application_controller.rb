class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

def after_sign_in_path_for(resource_or_scope)
  if current_user.aluno?
     alunos_linha_do_tempo_path
  else 
    if current_user.professor?
     professores_linha_do_tempo_path
    else
         if current_user.admin?
         administradores_index_path
         end
    end
  end
end


def after_sign_out_path_for(resource_or_scope)
  new_nivel_path
end

rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

private   
  def user_not_authorized
    flash[:notice] = "você não tem autorização para fazer essa ação"
    redirect_to (request.referrer || root_path)
  end
end
