Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "toppages#index"
  
  get "works", to: "toppages#works"
  get "about", to: "toppages#about"
  
  resources :contacts, only: [:new, :create]
end
