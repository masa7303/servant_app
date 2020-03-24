Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/edit'
  root to: 'tasks#index'

  # ログインまわり
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :tasks

  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
