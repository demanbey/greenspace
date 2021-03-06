Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :gardens do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:destroy, :edit, :update]
  resources :users

  get '/profile/:id', to: 'pages#profile', as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
