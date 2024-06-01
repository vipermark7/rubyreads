
Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  resources :books
  get 'home/index'
  resources :reviews
  root to: 'home#index'

  resources :books do
    resources :reviews do
      resources :comments
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/books', to: 'books#index'

  get '/books/:id', to: 'books#show'

  get '/', action: :index, controller: 'books'

end
