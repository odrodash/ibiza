Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    resources :bookings, only: [ :new, :create, :show ]
  end
  resources :bookings, only: [:destroy]

end
