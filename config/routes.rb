Dota::Application.routes.draw do
  root to: 'pages#show', id: 'home'
  resources :heroes
  resources :searches, only: [:show, :create]
  resources :users, only: [:index, :create, :new, :show]
  resources :drafts, only: [:create, :new, :show, :edit, :index]
  resources :sessions, only: [:create, :new, :destroy]


  get 'sign_up' => 'users#new'

  get ':id' => 'pages#show'
  
  get  "/users/forgot_password" => "users#forgot_password",
    as: "forgot_password"
  post "/users/forgot_password" => "users#forgot_password_post",
    as: "forgot_password_post"
  get  "/users/reset_password/:user_id/:token" => "users#reset_password",
    as: "reset_password"
  post "/users/reset_password" => "users#reset_password_post",
    as: "reset_password_post"
  get "/sessions/index" => "sessions#index",
    as: "login"
end