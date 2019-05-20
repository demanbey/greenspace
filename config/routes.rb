Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :garden do
    resources :booking, only: [:index, :new, :create]
  end
  resources :booking, only: [:destroy, :edit, :update]
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
