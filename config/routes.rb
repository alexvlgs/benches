Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'map', to: 'pages#map'
	resources :benches do
    resources :bookings, only: %i[new create destroy]
    resources :reviews, only: %i[new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
