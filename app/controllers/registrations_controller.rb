class RegistrationsController < Devise::RegistrationsController
  layout "application"
  def create
    super do
        Avaliar.create({:user_id => resource.id})
    end
  end
end
