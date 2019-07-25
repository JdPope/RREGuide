Rails.application.routes.draw do
  resources :tasks
  resources :expectations
  resources :responsibilities
  resources :roles
  resources :jobs
  resources :admins
  resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
