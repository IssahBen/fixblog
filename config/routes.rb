Rails.application.routes.draw do
  root "pages#home"

  resources :articles

  resources :users,only: [:new,:create]

  get "/signup", to: "users#new"
end
