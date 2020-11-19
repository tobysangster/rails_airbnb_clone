Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'

  get '/dashboard', to: 'pages#dashboard'

  # root to: "equipment#index"
  resources :equipment do
    resources :bookings, only: [:new, :create, :update, :edit, :destroy]
    # resources :reviews, only: [:create]
  end
  # resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
