Rails.application.routes.draw do

  resources :relationships
  resources :ribbits
  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/destroy'

  #get 'new/created'

  #get 'new/create'

  #get 'new/destroy'

  resources :sessions

  resources :users

  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'buddies', to: 'users#buddies', as: 'buddies'

  root to: "users#new"
  get 'welcome/index'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
