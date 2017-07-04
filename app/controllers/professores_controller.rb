class ProfessoresController < ApplicationController
  before_action :authenticate_user!
  def profile
  end
  def linha_do_tempo
    @users = User.where(role: 0)
  end
end