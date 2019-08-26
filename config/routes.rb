Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth'
  }

  root to: 'pages#home'

  namespace :hr_managers do
    get 'features', to: 'pages#features', as: 'features'
    resources :users, only: [:new, :create, :index]
    resources :companies, only: [:edit, :update]
  end
  get 'features', to: 'pages#features', as: 'features'
  resources :users, only: [:index, :show, :edit, :update] do
    get 'welcome', to: 'pages#welcome', as: 'welcome'
    get 'documents', to: 'pages#documents', as: 'documents'
    get 'buddy', to: 'pages#buddy', as: 'buddy'
  end
  resources :companies, only: [:show]
  get 'progress', to: 'users#progress', as: 'progress'
end
