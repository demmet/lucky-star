Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users

  namespace :admin do
    resources :users

    root to: 'users#index'
  end

  root to: 'pages#index'
end
