Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users
  resources :statuses
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
  
  resources :statuses
    root 'statuses#index'

  namespace :api, defaults: {format: 'json'} do
    resources :statuses, only: [:index, :create, :destroy, :update, :show]
  end

  resources :users
    root 'users#index'

  namespace :api, defaults: {format: 'json'} do
    resources :users, only: [:index, :create, :destroy, :update, :show]
  end  

end
