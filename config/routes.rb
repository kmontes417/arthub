Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'
   resources :studios do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
    end
   resources :bookings, only: [:index] do
    resources :reviews, only: [:new, :create]
   end

  patch '/bookings/:id', to: 'bookings#cancel', as: 'cancel'
  post '/bookings/:id', to: 'bookings#confirm', as: 'confirm'
  get '/dashboard', to: 'pages#dashboard'
end
