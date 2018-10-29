Rails.application.routes.draw do
  resources :places
  resources :contents
  resources :questions
  resources :clasifications
  resources :roles
  resources :statuses
  post 'user_token' => 'user_token#create'
  resources :users
  #Rutas personalizadas para Usuarios
  get '/users/nickname/:nickname', to: 'users#get_by_nickname', as: 'user_nickname'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
