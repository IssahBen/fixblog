Rails.application.routes.draw do
  root "pages#home"

  resources :articles

  resources :users,except: [:new]

  get "/signup", to: "users#new"

  get 'login', to: 'sessions#new'

  post "login", to: "sessions#create"

  delete 'logout',to: "sessions#destroy"

  resources :categories, exceopt: [:destroy]
end
