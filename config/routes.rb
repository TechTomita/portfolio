Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "toppages#index"
  
  get "works", to: "toppages#works"
end
