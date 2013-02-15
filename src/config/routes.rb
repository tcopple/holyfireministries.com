HolyfireMinistries::Application.routes.draw do
  # devise_for :users
  resources :pages
  # match ":permalink" => "pages#show", as: :permalink
  root to: "pages#index"
end
