Rails.application.routes.draw do
  resources :tasks
  resources :expectations
  resources :responsibilities
  resources :roles
  resources :jobs
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
