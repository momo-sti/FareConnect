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
  resources :gasolines, only: [:index, :calculate] do
    get :calculate, on: :collection
    post :save_gasoline_info, on: :collection
  end


  resources :highways do
    collection do
      get :create_highway
      post :save_highway_info
      get :highway
      get :reset_cost
    end

  end

  resources :results do
    get :get_gasoline_info, on: :collection
    get :get_highway_info, on: :collection
  end

  resources :extras


  root 'tops#top'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
