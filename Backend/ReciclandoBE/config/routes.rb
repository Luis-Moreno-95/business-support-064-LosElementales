Rails.application.routes.draw do
  resources :clasifications
  resources :roles
  resources :statuses
  post 'user_token' => 'user_token#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
