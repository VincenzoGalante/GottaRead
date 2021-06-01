Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :folders, only: [:index, :create]
end
