Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  #get '/articles/:id/mark_as_done', to: 'articles#mark_as_done', as: "mark_as_done"
  get '/archive', to: 'pages#archive'
  #patch for mark as done or as update within the articles routes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :create, :new, :show, :update]
  resources :connections, only: [:create, :new]
  resources :folders, only: [:index, :create, :new]
end
