Rails.application.routes.draw do
  resources :users
  root "users#index"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
