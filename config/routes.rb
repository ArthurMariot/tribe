Rails.application.routes.draw do
  devise_for :users
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
  end
  resources :companies, only: [:show]
end
