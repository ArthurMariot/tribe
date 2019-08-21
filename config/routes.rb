Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :hr_managers do
    get 'features', to: 'pages#features', as: 'features'
    resources :users, only: [:new, :create, :index]
    resources :companies, only: [:edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
