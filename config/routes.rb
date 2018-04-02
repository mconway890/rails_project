Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'users/auth/twitter/callback', to: 'sessions#create'
  #delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
