Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  resources :books
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  draw :api
end
