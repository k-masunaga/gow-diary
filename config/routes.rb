Rails.application.routes.draw do
  devise_for :users
  root to: 'users#new'

  resources :users, only: [:show, :get] do
    member do
      get 'show'
    end
  end

  resources :diary, only: [:get, :post] do
    collection do
      get 'create'
    end
  end

  resources :objective, only: [:index, :new, :create]

end
