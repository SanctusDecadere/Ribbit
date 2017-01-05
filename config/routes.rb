Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  #get 'new/created'

  #get 'new/create'

  #get 'new/destroy'

  resources :users

  root to: "users#new"
  get 'welcome/index'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
