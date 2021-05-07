Rails.application.routes.draw do
  root to: "rooms#index"
  resources :rooms, only: [:index, :new, :create]
  resources :records, only: [:index, :new, :create]
end
