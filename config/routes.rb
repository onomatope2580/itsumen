Rails.application.routes.draw do
  root to: "records#index"
  resources :records, only: [:index, :new, :create]
  resources :users, only: :show
end
