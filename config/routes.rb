Rails.application.routes.draw do
  devise_for :admins
  root to: "events#index"
  resources :events
  resources :users, only: [:index]
end
