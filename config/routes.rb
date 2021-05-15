Rails.application.routes.draw do
  root to: "rooms#index"
  resources :rooms, only: [:index, :new, :create] do
    resources :records, only: [:index, :new]
    resources :comments, only: [:create, :update]
  end
  resources :records, only: :create
end
