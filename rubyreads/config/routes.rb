Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.htm
  get "/articles", to: "articles#index"
end
