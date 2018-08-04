Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions
    root 'questions#index'
    
  namespace :api, defaults: {format: 'json'} do
    resources :questions, only: [:index, :create, :destroy, :update, :show]
  end

  resources :roles
    root 'roles#index'

  namespace :api, defaults: {format: 'json'} do
    resources :roles, only: [:index, :create, :destroy, :update, :show]
  end
end
