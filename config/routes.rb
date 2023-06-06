Rails.application.routes.draw do
  resources :tops

  root 'tops#index'
  get '/distance', to: 'top#distance'
  get '/route', to: 'top#route'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
