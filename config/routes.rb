Rails.application.routes.draw do
  root to: "rooms#index"
  resources :rooms, only: [:index, :new, :create] do
    resources :records, only: [:index, :new]
  end
  resources :records, only: :create
end
