Rails.application.routes.draw do
  devise_for :users
  root to: 'users#new'

  resources :users, only: [:show, :get] do
    member do
      get 'show'
    end
  end

  resources :diary, only: [:new, :create]

  resources :objective, only: [:index, :new, :create] do
    resources :amount, only: [:new, :create]
      post 'create'
  end

end