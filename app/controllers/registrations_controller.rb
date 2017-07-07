class RegistrationsController < Devise::RegistrationsController
  layout "application"
  def create
    super do
        Avaliar.create({:user_id => resource.id , :nota => 100 ,:comunicacao => 0, :colaboracao => 0,:construcao => 0,:pcritico => 0,:pcritico => 0,:compromisso =>0,:criatividade => 0 })
    end
  end
end
