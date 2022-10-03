Rails.application.routes.draw do
  root to: 'albums#index'
  resources :albums, only: [:index, :new, :create, :destroy, :show]
end
