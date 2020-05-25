Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  

=======

  root "messages#index"
  resources :users, only: [:edit, :update]
end
