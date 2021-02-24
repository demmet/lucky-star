Rails.application.routes.draw do
  resources :employees
  resources :companies
  devise_for :users
  get 'pages/index', as: :home
  root 'pages#index'
end
