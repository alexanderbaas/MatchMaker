Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users

resources :users
  resources :students, only:[:index, :show]
    resources :admins

  namespace :api do
    resources :admins
  end

  namespace :api do
    resources :students
  end

end
