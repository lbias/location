Rails.application.routes.draw do
  devise_for :users
  root 'places#index'

  resources :places, except: [:update, :edit, :destroy]

  resources :users do
    resources :friendships
  end
end
