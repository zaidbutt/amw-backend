Rails.application.routes.draw do
  get "stories/index"
  get "stories/show"
  devise_for :users
  # get "welcome/index"
  # post "/graphql", to: "graphql#execute"
  root "dashboard#index"
  get "/dashboard", to: "dashboard#index"
  resources :stories, only: [:index, :show]


end
