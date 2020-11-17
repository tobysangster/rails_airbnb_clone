Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # root to: "equipment#index"
  resources :equipment
    # resources :doses, only: [:create]
    # resources :reviews, only: [:create]
  # end
  # resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
