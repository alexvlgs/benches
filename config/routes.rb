Rails.application.routes.draw do
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/update'
  # get 'bookings/delete'
  devise_for :users
  root to: 'pages#home'
	resources :benches do
    resources :bookings, only: %i[new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
