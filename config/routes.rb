Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_for :admins, :controllers => {
    :registrations => 'admins/registrations',
    :sessions => 'admins/sessions'
  }
  
  root to: 'reservations#index'
  resources :reservations, only: [:index, :show]
  resources :studios,      only: [:new, :create, :edit, :update, :destroy] do
    resources :reserves, only: [:new, :create]
  end
end
