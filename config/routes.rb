Rails.application.routes.draw do

  resources :avaliars
  resources :answers do
    member do
      post 'like'
      post 'dislike'
      post 'report'
    end

  end
  resources :habilidades
  resources :material_didaticos
  resources :tasks do
      resources :subtasks do
      resources :puclets
    end
  end

  resources :nivels
  get 'control_users/index'
  get 'alunos/linha_do_tempo'
  get 'alunos/missao'
  get 'alunos/privilegio'
  get 'alunos/grafico_habilidade'
  get 'alunos/grafico_progresso'
  get 'alunos/profile'
  get 'alunos/resolver_task'
  get 'professores/linha_do_tempo'
  get 'professores/profile'
  get 'professores/alunos'
  get 'professores/aluno_resumo'
  get 'administradores/index'

  devise_for :users
  devise_scope :user do
      root :to => 'devise/sessions#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
