Rails.application.routes.draw do
  get 'sessions/new'

  resources :articles
  resources :users
  resource :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
