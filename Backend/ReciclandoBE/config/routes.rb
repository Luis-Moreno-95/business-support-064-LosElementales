Rails.application.routes.draw do
  resources :clasifications
  root 'clasifications#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: 'json'} do
    resources :clasifications, only: [:index, :create, :destroy, :update, :show]
  end
end
