Rails.application.routes.draw do
  resources :blogs
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]


end
