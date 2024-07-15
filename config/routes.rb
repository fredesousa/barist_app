Rails.application.routes.draw do
  get 'coffees/index'
  get 'coffees/show'
  get 'coffees/new'
  get 'coffees/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'pages#home'
  resources :users, only: [:index]
  resources :levels, only: [:new, :create]
  resources :preferences, only: [:new, :create]
  resources :coffees, only: [:index, :show, :new, :create]
end
