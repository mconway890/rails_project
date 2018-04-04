Rails.application.routes.draw do
  devise_for :users
  resources :vacations do
    resources :items
    resources :activities
  end
  post '/vacations/new'
  root 'welcome#index'
  #get 'users/auth/twitter/callback', to: 'sessions#create'

  #resources :users do
  #  resources :vacations
  #end
  #delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
