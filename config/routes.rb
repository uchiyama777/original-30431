Rails.application.routes.draw do
  devise_for :users
  get 'artists/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "artists#index"
  resources :users, only: [:new, :edit, :create]
  resources :artists, only: [:new, :edit, :create,:show]
end
