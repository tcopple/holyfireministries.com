HolyfireMinistries::Application.routes.draw do
  # devise_for :users
  # resources :pages
  # match ":permalink" => "pages#show", as: :permalink
  match "/justin-kendrick" => "pages#kendrick"
  match "/email" => "pages#email"
  root to: "pages#index"
end
