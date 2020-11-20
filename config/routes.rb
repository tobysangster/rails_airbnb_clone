Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/create'
  get 'messages/show'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'

  get '/dashboard', to: 'pages#dashboard'
  resources :bookings, only: [:destroy]
  # root to: "equipment#index"
  resources :equipment do
    resources :bookings, only: [:new, :create, :update, :edit]
    # resources :reviews, only: [:create]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
