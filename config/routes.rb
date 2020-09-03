Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :get]

  resources :diary, only: [:get, :post] do
    collection do
      get 'create'
    end
  end

  resources :objective, only: [:get, :post] do
    collection do
      get 'create'
    end
  end
end
