Rails.application.routes.draw do
  resources :origins
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "origins#index"
end
