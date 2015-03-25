Rails.application.routes.draw do
  get 'users/show'

  get "/index", to: "static#index"
  get "/about", to: "static#about"
  
  root to: "static#index"
  
  resources :items, only: [:create, :destroy]
  
  devise_for :users
  resources :users, only: [:show]
  
end
