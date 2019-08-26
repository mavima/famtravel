Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'

  resources :categories, only: [:index, :new, :create] do
    resources :facilities, only: [:new, :create]
  end
  resources :facilities, only: [:index, :show, :new, :create, :destroy] do #part added
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :city, only: [:new, :create]
  get 'users/profile/:id', to: 'users#show', as: 'user'

end
