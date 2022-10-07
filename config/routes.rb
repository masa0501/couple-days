Rails.application.routes.draw do
  devise_for :users
  root to: 'albums#index'
  resources :albums
  resources :events, only: [:index, :new, :create]
end
