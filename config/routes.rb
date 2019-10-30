Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    resources :bookings, only: [ :new, :create ]
  end

  resources :users, only: [:show]

  resources :bookings, only: [:destroy, :show]
  get 'results', to: 'products#results', as: :results
end
