Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :hr_managers do
    get 'features', to: 'pages#features', as: 'features'
    resources :users, only: [:new, :create, :index]
    resources :companies, only: [:edit, :update]
  end

  resources :users, only: [:index, :show]
  resources :companies, only: [:show]
end
