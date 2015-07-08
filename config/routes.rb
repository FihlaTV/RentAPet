Rails.application.routes.draw do
  resources :listings
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, :only => [:show]
  resources :cancels, :only => [:index]
  root "listings#index"
end
