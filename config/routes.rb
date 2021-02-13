Rails.application.routes.draw do

  get 'tasks/index'
  root "tasks#index"

  # get "/tasks", to: "articles#index"
end
