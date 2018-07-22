Rails.application.routes.draw do
  resources :registrations
  root to: 'articles#index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions, only: [:create]
  resources :articles
  resources :products, param: :sku
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
