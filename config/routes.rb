Rails.application.routes.draw do
  resources :tops do
    get :top, on: :collection
  end
  resources :calculations do
    get :result, on: :collection
    post :datasave, on: :collection
  end

  root 'tops#top'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
