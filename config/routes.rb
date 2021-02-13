Rails.application.routes.draw do
  devise_for :users
  get 'user/profile', as: 'user_root'
  root "tasks#index"
  resources :tasks
end
