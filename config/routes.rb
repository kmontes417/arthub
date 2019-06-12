Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'
   resources :studios do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
    end
   resources :bookings, only: [:show] do
    resources :reviews, only: [:new, :create]
   end

  get '/dashboard', to: 'pages#dashboard'
end
