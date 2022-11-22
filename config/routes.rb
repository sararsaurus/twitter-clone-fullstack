Rails.application.routes.draw do
  get "relationships/index"
  get "relationships/show"
  get "relationships/new"
  get "relationships/edit"
  resources :users
  root "users#index"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/users/:id/follow", to: "users#follow", as: "follow_user"
  post "/users/:id/unfollow", to: "users#unfollow", as: "unfollow_user"
end
