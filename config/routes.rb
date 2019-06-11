Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'
   resources :studios do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :reviews, only: [:new, :create]
  get '/dashboard', to: 'pages#dashboard'
end
