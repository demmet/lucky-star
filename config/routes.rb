Rails.application.routes.draw do
  resources :employees
  resources :companies
  devise_for :users
  get 'pages/index'
  root 'pages#index'
end
