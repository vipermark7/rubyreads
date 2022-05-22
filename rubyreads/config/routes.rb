Rails.application.routes.draw do
  get 'home/index'
  resources :reviews
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/books", to: "books#index"
end
