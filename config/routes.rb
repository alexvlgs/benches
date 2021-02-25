Rails.application.routes.draw do
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/update'
  # get 'bookings/delete'
  devise_for :users
  get 'dashboard', to: 'pages#dashboard'
  root to: 'pages#home'
  get 'map', to: 'pages#map'
	resources :benches do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
