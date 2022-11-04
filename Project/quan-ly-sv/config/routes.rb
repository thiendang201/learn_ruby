Rails.application.routes.draw do
  resources :saches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "saches#index"
  get "/articles", to: "articles#index"
  get "/saches", to: "saches#index"
end
