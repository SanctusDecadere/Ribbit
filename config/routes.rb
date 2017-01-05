Rails.application.routes.draw do

  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/destroy'

  #get 'new/created'

  #get 'new/create'

  #get 'new/destroy'

  resources :sessions

  resources :users

  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: "users#new"
  get 'welcome/index'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
