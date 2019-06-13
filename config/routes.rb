Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'
   resources :studios do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
    end
   resources :bookings, only: [:show] do
    resources :reviews, only: [:new, :create]
   end

  post '/booking/:id', to: 'bookings#confirm', as: 'confirm'
  post '/booking/:id', to: 'bookings#cancel', as: 'cancel'
  get '/dashboard', to: 'pages#dashboard'
end
