Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events do
    resources :bookings, only: [:create]
    resources :posts, only: [:create, :destroy]
  end

  resources :bookings, only: :index
  resources :search, only: [:index]

end
