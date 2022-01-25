Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects
  resources :skills, except: :show
  resources :project_skills, only: [:new, :create]

  ##############
  # ADMIN
  ##############
  # namespace :admin do
  #   get '', action: 'index', as: '/'
  #   resources :projects
  #   resources :skills
  #   resources :project_skills, only: [:new, :create]
  #   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
