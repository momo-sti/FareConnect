Rails.application.routes.draw do
  resources :posts

  root 'posts#index'
  get '/distance', to: 'post#distance'
  get '/route', to: 'post#route'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
