Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  post "search", to: "pages#search"
  resources :facilities_categories, only: [:index, :new, :create] do
    resources :facilities
  end
  resources :city, only: [:new, :create]
end
