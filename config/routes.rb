Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'

  resources :projects, only: %i[index show]
  resources :skills, only: :index

  # ADMIN
  namespace :admin do
    resources :projects, except: %i[index show]
    resources :skills
    resources :project_skills, except: %i[index show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
