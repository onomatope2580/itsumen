Rails.application.routes.draw do
  resources :recrods, only: [:index, :show]
  resources :users, only: :show
end
