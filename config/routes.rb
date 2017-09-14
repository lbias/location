Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :places, except: [:update, :edit, :destroy]

  resources :users do
    resources :friendships
  end

  get '/:name', to: 'places#index'
end
