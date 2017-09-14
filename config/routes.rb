Rails.application.routes.draw do
  devise_for :users
  root 'places#index'

  resources :places, except: [:update, :edit, :destroy]

  resources :friendships, only: [:create, :update, :destroy]

  resources :users, only: :index
end
