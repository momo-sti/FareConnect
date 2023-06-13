Rails.application.routes.draw do
  get 'highways/index'
  resources :tops, only: [:index, :top] do
    get :top, on: :collection
  end
  resources :calculations do
    get :result, on: :collection
    post :result, on: :collection
    post :datasave, on: :collection
  end
  resources :gasolines, only: [:index]

  get 'highways/highway', to: 'highways#highway', as: 'highway_highway'
  post 'highways', to: 'highways#create', as: 'highways'


  root 'tops#top'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
