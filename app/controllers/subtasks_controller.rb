  class SubtasksController < ApplicationController
    before_action :set_task
    
    
    def create
      @subtask = @task.subtasks.create(subtask_params)
      redirect_to @task
    end
      
      private 
      
      # Encontrar a task
      def set_task
         @task = Task.find(params[:task_id])
      end 
      

      def subtask_params
        params.require(:subtask).permit(:task_id,:status,:nome,:descricao,:avaliativa,:entrega, :puclets_attributes => [:nome])
      end
  end
