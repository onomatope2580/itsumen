Rails.application.routes.draw do
  root to: "records#index"
  resources :recrods, only: [:index, :show]
  resources :users, only: :show
end
