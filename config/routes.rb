Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users

  resources :students, only:[:index, :show]
    resources :admins

end
