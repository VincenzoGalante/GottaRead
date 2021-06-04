Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/mark_as_done', to: 'articles#mark_as_done'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :create, :new, :show]
  resources :connections, only: [:create, :new]
  resources :folders, only: [:index, :create, :new]
end
