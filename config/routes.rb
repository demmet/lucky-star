Rails.application.routes.draw do
  devise_for :admins
  get 'pages/index'
  root 'pages#index'
end
