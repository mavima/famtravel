Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'
  get '/about', to: 'pages#about'

  resources :categories, only: [:index, :new, :create] do
    resources :facilities, only: [:new, :create]
  end
  resources :facilities, only: [:index, :show, :new, :create, :destroy, :edit, :update] do #part added
    resources :reviews, only: [:new, :create, :edit, :update]
    resources :favourites, only: :create
  end

  get '/facilities/:id/map', to: 'facilities#map', as: 'facility_map'

  resources :favourites, only: :destroy

  resources :cities, only: [:new, :create]

  get 'users/profile/:id', to: 'users#show', as: 'user'

end
