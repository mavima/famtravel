Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [:index, :new, :create] do
    resources :facilities, only: [:new, :create, :show]
  end
  resources :facilities, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
