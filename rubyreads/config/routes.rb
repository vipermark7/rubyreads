Rails.application.routes.draw do
  resources :comments
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/articles", to: "articles#index"
end
