Rails.application.routes.draw do
  resources :users
  resources :tweets, except: [:edit, :update]
  root "tweets#index"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/users/:id/follow", to: "users#follow", as: "follow_user"
  post "/users/:id/unfollow", to: "users#unfollow", as: "unfollow_user"

  # get "/users/:id/followers" => "users#follow"
  # get "/users/:id/followees" => "users#"
end
