require 'sidekiq/web'

HolyfireMinistries::Application.routes.draw do
  # devise_for :users
  # resources :pages
  # match ":permalink" => "pages#show", as: :permalink
  match "/justin-kendrick" => "pages#kendrick"
  match "/email" => "pages#email"

  mount Sidekiq::Web, at: '/sidekiq'

  root to: "pages#index"
end
