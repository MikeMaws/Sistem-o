class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

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

protected
  def configure_permitted_parameters
    added_attrs = [:matricula,:name, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

private   
  def user_not_authorized
    flash[:notice] = "você não tem autorização para fazer essa ação"
    redirect_to (request.referrer || root_path)
  end
end
