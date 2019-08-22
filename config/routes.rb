Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [:index, :new, :create] do
    resources :facilities, only: [:new, :create]
  end
  resources :facilities, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :city, only: [:new, :create]
end
