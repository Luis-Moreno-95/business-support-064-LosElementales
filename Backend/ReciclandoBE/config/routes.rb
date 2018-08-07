Rails.application.routes.draw do
  resources :contents
  resources :clasifications
  root 'clasifications#index'
 
  namespace :api, defaults: {format: 'json'} do
    resources :clasifications, only: [:index, :create, :destroy, :update, :show]
  end 

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

  resources :contents
    root 'contents#index'

  namespace :api, defaults: {format: 'json'} do
    resources :contents, only: [:index, :create, :destroy, :update, :show]
  end

end
