Rails.application.routes.draw do
  resources :listings
  devise_for :users
  resources :users

  root "listings#index"
end
