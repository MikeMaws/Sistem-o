class MaterialdidaticosController < ApplicationController
  before_action :set_task
    
    
    def create
      @materialdidatico = @task.materialdidaticos.create(materialdidatico_params)
      redirect_to @task
    end
      
      private 
      
      # Encontrar a task
      def set_task
         @task = Task.find(params[:task_id])
      end 
      

      def materialdidatico_params
        params.require(:materialdidatico).permit(:task_id,:descricao,:link)
      end
end
